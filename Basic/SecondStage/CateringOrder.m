//
//  CateringOrder.m
//  
//
//  Created by Shan on 4/13/16.
//
//

#import "CateringOrder.h"

// Composition class

@implementation CateringOrder

// add a choice for catering


// initialize NSMutableDictionary
-(id) init{
    
    
    // using the super class, init method
    self = [super init];
    
    // if instance of this tablecheck class already existed
    if(self){
        
        self.orderFormDic = [[NSMutableDictionary alloc]init];
        
    }
    
    // return the same instance
    return self;
    
}


-(void)addMenuChoice:(MenuItem *)menuItem{
    // add first key-value pair item
    // menuItem.itemName : 0
    [self.orderFormDic addEntriesFromDictionary:@{menuItem.itemName:@0}];
    
}

-(void)setItemQty: (MenuItem *)menuItem withQty:(int)qty{

    [self.orderFormDic setValue:@(qty) forKey:menuItem.itemName];

}

//Use the orderFormDic to create a tableCheck with correct quantity and menuitem

@end
