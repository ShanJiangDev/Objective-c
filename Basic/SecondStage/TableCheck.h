//
//  TableCheck.h
//  SecondStage
//
//  Created by Shan on 4/13/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuItem.h"


@interface TableCheck : NSObject

// Declar property:

// Property come with the get and set value function

// Nonatomic: Specify how different processes in a multi thread app can interupt with property
// Since this project will only have single thread, so we can use nonatomic
// atomic: thread safe then nonatomic


// Strong: Memory Directive, it determins when we increase the reference account and when memory can be released

// ARC: Automatic Reference Counting, things handler by compiler

// When we alloc and init a new NSArray -> computer count sampleArray reference =  1
// When : otherArray = sampleArray, We point a different object to the same memory address -> reference count = 2;
// If we : otherArray = nil, will set referenct count = 1;

// Memory Directives: choice the right memory directive to the proticular property
    // Strong: Reference count will be increased and the reference to it will be maintained throughout the lift of the object.
    // Weak: Pointing to an object, but not increasing its reference count
        // Parent-child relationship: parent often has strong relation to child, but child only has weak reference to parent
    // Read-only: Set property intially, then can not be change
    // Copy: Makes a copy of the object to be referenced. Points to the copy instead and sets its reference to 1.

// set value in main class:
// table1.subtotal = 12.4;
// get value
// float text = table.subtotal;



@property(nonatomic) int serverNumber;
@property(nonatomic) int numberOfCustomers;
@property(nonatomic) float subtotal;
@property(nonatomic) float tip;
@property(nonatomic) float total;
@property(nonatomic) BOOL isTakeOut;
@property(nonatomic) NSDate *timeStamp;
@property(nonatomic, strong) NSMutableArray *iteamOrdered;
@property(nonatomic,readonly) NSString *checkID;

// declare method we built in .m file, so other file can find and use it.
-(void)addTax;
-(void)addMenuItem:(MenuItem*)menuItem;


@end
