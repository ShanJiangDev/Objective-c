//
//  main.m
//  testStrings
//
//  Created by Shan on 4/8/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

enum popcornSizes{
    kidsPopcorn   = 1,
    smallPopcorn  = 2,
    mediumPopcorn = 3,
    largePopcorn  = 4,
    tubPopcorn    = 5
};


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    NSString *firstName;
    firstName = @"Jaime";
    NSLog(@"firstname: %@",firstName);
    
    int currentAge;
    currentAge = 36;
    
    float currentWeight;
    currentWeight = 124.75;
    
    float currentHeight;
    currentHeight = 60.0;
    
    int currentWeightPerInch;
    currentWeightPerInch = currentWeight/currentHeight;
    
    double currentWeightPerInch2;
    currentWeightPerInch2 = currentWeight/currentHeight;
    
    NSLog(@"CurrentHeight is: %f", currentHeight);
    
    NSLog(@"CurrentWeight is: %f", currentWeight);

    NSLog(@"Current Weight per Hight is: %i", currentWeightPerInch);
    
    NSLog(@"Current New Weight per Hight is: %f", currentWeightPerInch2);

    // New Lecture
    
    bool hasLicense;
    hasLicense = false;
    NSLog(@"has license: %i",hasLicense);
    
    // New Lecture
    
    // Add breakpoint after the line you wanna test.
    // Project will stop at that line and provide information for asigned variables.
    
    int apples = 3 + 5 + 4 + 1;
    int oranges = 10 - 3;
    int totalFruit = apples + oranges;
    
    int eggsPerCarton = 12;
    int eggs = eggsPerCarton * 4;
    
    int baskets = 4;
    float itemsPerBasket = (apples + oranges + eggs) / baskets;
    
    bool compareResult;
    compareResult = 5 >=  5;
    
   // New Lecture: If Else
    
    // Use Refector -> Rename: to change name for variable if needed
    
    bool isMatinee;
    
    float regPrice = 10.0;
    float seniorPrice = 5.0;
    float matPrice = 4.0;
    
    int minAge = 60;
    int customerAge;
    float customerPrice;
//    data for testing
//    customerAge = 50;
//    isMatinee = NO;
    
    
    
    
    if (isMatinee) {
        
        customerPrice = matPrice;
        
    }else if (customerAge > minAge){
        
        customerPrice = seniorPrice;
        
    }else{
        
        customerPrice = regPrice;
        
    }
    
    // New Lecture: Switch

    float popcornPrice;
    int popcornSize;
    
    // Enum of tubPopcorn is created on the top of this class.
    popcornSize = tubPopcorn;
    
    switch (popcornSize) {
        case kidsPopcorn:
            popcornPrice = 1.5;
            // if hit the break, exit the switch completely, no more processing.
            break;
        case smallPopcorn:
            popcornPrice = 3;
            break;
        case mediumPopcorn:
            popcornPrice = 4.25;
            break;
        case largePopcorn:
            popcornPrice = 5.25;
            break;
        case tubPopcorn:
            popcornPrice = 6;
            break;
        default:
            NSLog(@"No valid size entered");
            break;
    }
    
    // New Lecture: Logical Operators AND OR NOT
    
    bool ageDiscount = FALSE;
    bool isMatinee2;
    bool isEmployee;

    
    // Rulles:
    // Full price = 10
    // Non-employee with an age discount and attending matinee = 6.50
    // Non-employee with an age dscount or attending matinee = 8.5
    // Employee attending non-matine = 4.5
    // Employee attending matine
    
    float regularPrice = 10;
    float ageOrMatineePrice = 8.5;
    float ageAndMatineePrice = 6.5;
    float employeeRegPrice = 4.5;
    float emplyeeMatineePrice = 0;
    
    int customerAge2;
    float customerPrice2;
    int youthAge = 13;
    int seniorAge = 65;
    
    
//    data for testing
//    isMatinee2 = false;
//    isEmployee = false;
//    customerAge2 = 20;
    
    if((customerAge2 < youthAge) || (customerAge2 >= seniorAge)){
        ageDiscount = YES;
    }
    
    if(ageDiscount && isMatinee2 && !isEmployee){
        
        customerPrice2 = ageAndMatineePrice;
        
    }else if ((ageDiscount || isMatinee2) && !isEmployee){
        
        customerPrice2 = ageOrMatineePrice;
        
    }else if(!isMatinee2 && isEmployee){
        
        customerPrice2 = employeeRegPrice;
        
    }else if(isMatinee2 && isEmployee){
        
        customerPrice2 = emplyeeMatineePrice;
        
    }else{
    
        customerPrice2 = regularPrice;
        
    }
    
    // New Lecture: Unary Ternary:
    
    
    
    
    return 0;
}




























