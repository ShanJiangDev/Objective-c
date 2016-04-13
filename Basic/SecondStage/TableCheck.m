//
//  TableCheck.m
//  SecondStage
//
//  Created by Shan on 4/13/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import "TableCheck.h"


@implementation TableCheck
float tax = 0.08;

-(id) init{
    
    // Here we create an instance of tablecheck ---self
    
    // using the super class, init method
    self = [super init];
    
    // if instance of this tablecheck class already existed
    if(self){
    
        self.iteamOrdered = [[NSMutableArray alloc]init];
        self.isTakeOut = NO;
    
    }
    
    // return the same instance
    return self;

}

//-(void)addTax:(TableCheck*)tableCheck{
    
-(void)addTax{
    
    //tableCheck.total = tableCheck.subtotal *(1+tax);
    self.total = self.subtotal *(1+tax);
    
}

-(void)addMenuItem:(MenuItem*)menuItem{
    
    [self.iteamOrdered addObject:menuItem.itemName];
    self.subtotal += menuItem.itemPrice;
    
}




@end
