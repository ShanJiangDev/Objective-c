//
//  NSArray+Moview.m
//  SecondStage
//
//  Created by shan jiang on 14/04/16.
//  Copyright © 2016 Shan. All rights reserved.
//

#import "NSArray+Moview.h"

@implementation NSArray (Moview)

-(NSArray*) dedupe{
    
    NSMutableArray *dedeupedArray = [[NSMutableArray alloc]init];
    
    for(NSString *rawItem in self){
        
        if(![dedeupedArray containsObject:rawItem]){
            
            [dedeupedArray addObject:rawItem];
            
        }
        
    }
    
    // It is okay to return a NSMutableArray for NSArray method
    return dedeupedArray;

}

@end
