//
//  GroupTableCheck.m
//  SecondStage
//
//  Created by Shan on 4/13/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import "GroupTableCheck.h"

@implementation GroupTableCheck

// Grand 20% tips
// Use the same name of method from parents class but modified content
-(void)addTips{
    
    float tipRate = 0.2;
    self.tip = self.subtotal*tipRate;
    self.total = self.subtotal + self.tip;
    
}

-(void) checkMinimum{

    if(self.iteamOrdered.count < self.numberOfCustomers){
        
        MenuItem *feeItem = [[MenuItem alloc]init];
        feeItem.itemPrice = 3.00;
        feeItem.itemName = @"Group Minimum Fee";
        int numberOfFee = self.numberOfCustomers - self.iteamOrdered.count;
        
        for(int i = numberOfFee; i > 0; i--){
            
            [self addMenuItem:feeItem];
            
        }
        
    }
    
}




@end
