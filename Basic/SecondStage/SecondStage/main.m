//
//  main.m
//  SecondStage
//
//  Created by Shan on 4/10/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
    }
    // New Lecture: NSDictionary NSMutableDictionary
    NSDictionary *orderDict = @{
                               @"burgers"  : @5,
                               @"shakes"   : @3,
                               @"customers": @4,
                               @"isTakeOut": @NO,
                               @"subtotal" : @0.0,
                               };
    
    float burgerPrice = 4.3;
    float shakePrice  = 3.0;
    float subtotal = 0.0;
    
    // A pointer will receive when we calliong the value of a key.
    // Pointer can not preform math.
    subtotal = burgerPrice * [orderDict[@"burgers"]intValue] + shakePrice * [orderDict[@"shakes"]intValue];
    
    NSMutableDictionary *outputDict = [orderDict mutableCopy];
    //NSMutableDictionary *outputDict = [NSMutableDictionary dictionaryWithDictionary:orderDict];
    
    outputDict[@"subtotal"] =@(subtotal);
    
    NSDictionary *artDict = @{
                              @"Artist": @"Dali",
                              @"Title" : @"The Ship",
                              @"Medium": @"Oil Paint",
                              };
    
    NSString *favoriteArtist = artDict[@"Artist"];
    
    NSArray *numberArray = @[@"one", @"two", @"three"];

    
    // Get Value;
    
    NSString *firstElement = numberArray[0];
    NSString *firstElement2= [numberArray objectAtIndex:0];
    
    // Count element;
    
    int arrayCount = [numberArray count];
    
    // Create mutable Array
    
    NSMutableArray *mutableNumberArray  = [@[@"one", @"two", @"three"] mutableCopy];
    NSMutableArray *mutableNumberArray2 = [numberArray mutableCopy];
    
    
    //  Replace element
    
    [mutableNumberArray replaceObjectAtIndex:0 withObject:@"NEW"];
    mutableNumberArray2[0] = @"new";
    
    // Remove
    
        //Chosen element
    [mutableNumberArray removeObjectAtIndex:2];
        //All elements
    mutableNumberArray2.removeAllObjects;
    
    
    // Insert
        // add certain location
    [mutableNumberArray insertObject:@"insert" atIndex:0];
        // add at the end
    [mutableNumberArray addObject:@"end"];
    
    
    
    //[outputDict setValue:@(subtotal) forKey:@"subtotal"];
    
    
    
    
    // New Lecture: Memory and Pointers, Alloc and Init
    
//    NSMutableDictionary *carDictc = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"Make", @"Honda", nil];
//    NSString *myRide = [[NSString alloc] init];
    
    
    // New Lecture: For In Loop
    
    BOOL isMatinee = NO;
    BOOL isEmployee = NO;
    BOOL ageDiscount = NO;
    
    float priceTotal = 0.0;
    float taxRate = 0.05;
    float grandTotal = 0.0;
    
        float regularPrice = 10;
        float ageOrMatineePrice = 8.5;
        float ageAndMatineePrice = 6.5;
        float employeeRegPrice = 4.5;
        float emplyeeMatineePrice = 0;
    
        int customerAge;
        float customerPrice;
        int youthAge = 13;
        int seniorAge = 65;
    
    
    //    data for testing
        isMatinee = NO;
        isEmployee = NO;
    
    
    
    NSArray *agesArray = @[@5, @5, @14, @42, @77];
    
    
    for (NSNumber *age in agesArray) {
  
        customerAge = [age intValue];
    
     //The following lecture change this if statement into one line of code
    
        ageDiscount = ((customerAge > 1) && ( (customerAge < youthAge) || (customerAge >= seniorAge) )) ? YES:NO;
    
    
        if(ageDiscount && isMatinee && !isEmployee){
    
            customerPrice = ageAndMatineePrice;
    
        }else if ((ageDiscount || isMatinee) && !isEmployee){
    
            customerPrice = ageOrMatineePrice;
    
        }else if(!isMatinee && isEmployee){
    
            NSString * empMessage = @"Thanks for being part of the team";
            NSLog(@"Employee special message: %@", empMessage);
    
            customerPrice = employeeRegPrice;
    
        }else if(isMatinee && isEmployee){
    
            customerPrice = emplyeeMatineePrice;
    
        }else{
    
            customerPrice = regularPrice;
    
        }
        
        priceTotal += customerPrice;
      
        NSLog(@"Age: %i, price: %f, current subtotal: %f %n", customerAge, customerPrice, priceTotal);
    
    
    }
    
    grandTotal = priceTotal + (priceTotal*taxRate);
    
    
    return 0;
}


















