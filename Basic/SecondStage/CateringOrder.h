//
//  CateringOrder.h
//  
//
//  Created by Shan on 4/13/16.
//
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"

// Composition class: can using function from other class, but not as a subclass

@interface CateringOrder : NSObject

@property(nonatomic, strong) NSString *deliveryAddress;
@property(nonatomic, strong) NSString *contactPhone;
//Record order item and number
@property(nonatomic, strong) NSMutableDictionary *orderFormDic;
@property(nonatomic, strong) TableCheck *tableCheck;

-(void)addMenuChoice:(MenuItem *)menuItem;
-(void)setItemQty: (MenuItem *)menuItem withQty:(int)qty;

@end
