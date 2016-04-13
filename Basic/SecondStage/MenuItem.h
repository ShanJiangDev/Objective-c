//
//  MenuItem.h
//  SecondStage
//
//  Created by Shan on 4/13/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (nonatomic,strong) NSString *itemName;
@property (nonatomic) float itemPrice;
@property (nonatomic) BOOL isDrink;

@end
