//
//  ClientThread.m
//  TCPDataTransfer
//
//  Created by Shan on 4/4/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import "ClientThread.h"

@implementation ClientThread
-(void)initializeClient{
    
    // create a client socket, same step as server socket
    CFSocketContext sctx = {0, (__bridge void *)(self),NULL,NULL,NULL};
    
    obj_client = CFSocketCreate(kCFAllocatorDefault, AF_INET, SOCK_STREAM, IPPROTO_TCP,kCFSocketAcceptCallBack,TCPClientCallBackHandler, &sctx);
    
    struct sockaddr_in socket_addr;
    memset(&socket_addr, 0, sizeof(socket_addr));
    socket_addr.sin_len = sizeof(socket_addr);
    socket_addr.sin_family = AF_INET;
    socket_addr.sin_port = htons(6658);
    socket_addr.sin_addr.s_addr = INADDR_ANY;
    //special for client
    inet_pton(AF_INET, "127.0.0.1", &socket_addr.sin_addr);
    
    CFDataRef dref = CFDataCreate(kCFAllocatorDefault, (UInt8*)&socket_addr, sizeof(socket_addr));
    CFSocketConnectToAddress(obj_client, dref, -1);
    CFRelease(dref);
    
}
-(void)main{
    
    CFRunLoopSourceRef loopref = CFSocketCreateRunLoopSource(kCFAllocatorDefault, obj_client, 0);
    
    CFRunLoopAddSource(CFRunLoopGetCurrent(), loopref, kCFRunLoopDefaultMode);
    
    CFRelease(loopref);
    
    CFRunLoopRun();
    
}



-(void) DisconnectFromServer{
    
    CFSocketInvalidate(obj_client);
    CFRelease(obj_client);
    CFRunLoopStop(CFRunLoopGetCurrent());
    
}

-(void) SendTCPDataPacke:(const char *)data{
    //initialize
    int initialize[1] = {2};
    int separator[1] = {4};
    int data_length = (int)strlen(data);
    int target_length = snprintf(NULL, 0, "%d",data_length);
    // under line convert 45 to "45"
    char* data_length_char = malloc(target_length+1);
    snprintf(data_length_char, target_length+1, "%d",data_length);
    
    int ele_count = (int)strlen(data_length_char);
    int *size_buff = (int*)malloc(ele_count*sizeof(int));
    
    for(int counter = 0; counter < ele_count; counter ++){
        size_buff[counter] = (int)data_length_char[counter];
    }
    
    int packet_length = 1 + 1 + ele_count + (int)strlen(data);
    
    UInt8 *packet = (UInt8*)malloc(packet_length * sizeof(UInt8));
    memcpy(&packet[0], initialize, 1);
    
    for(int counter = 0; counter < ele_count; counter ++){
        memcpy(&packet[counter + 1], &size_buff[counter], 1);
    }
    
    memcpy(&packet[0+1+ele_count], separator, 1);
    memcpy(&packet[0+1+ele_count+1], data, StrLength(data));
    
    //create data reference
    CFDataRef dref = CFDataCreate(kCFAllocatorDefault, packet, packet_length);
    CFSocketSendData(obj_client, NULL, dref, -1);
    
    //release memory
    free(packet);
    free(size_buff);
    free(data_length_char);
    CFRelease(dref);
    
}

-(void)InitializeNative:(CFSocketNativeHandle) native_socket{
    
    CFSocketContext sctx = {0, (__bridge void *)(self),NULL,NULL,NULL};
    
    obj_client = CFSocketCreateWithNative(kCFAllocatorDefault, native_socket, kCFSocketReadCallBack, TCPClientCallBackHandler,&sctx);
}

void TCPClientCallBackHandler(CFSocketRef s, CFSocketCallBackType callbacktype, CFDataRef address, const void *data, void *info){
    
    switch(callbacktype){
        case kCFSocketConnectCallBack:
            if(data){
                CFSocketInvalidate(s);
                CFRelease(s);
                CFRunLoopStop(CFRunLoopGetCurrent());
            }else{
                NSLog(@"Client Connect to Server");
            }
            break;
            
    }
}


@end













