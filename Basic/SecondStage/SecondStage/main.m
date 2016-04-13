//
//  main.m
//  SecondStage
//
//  Created by Shan on 4/10/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"
#import "GroupTableCheck.h"
#import "CateringOrder.h"



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
    
    
    // Example for NSArray and NSMutableArray
    
    
    
    NSArray *scoresArray = @[@100, @94, @83, @77, @72];
    
    float sumScore = 0;
    float averageScore = 0;
    float count = [scoresArray count];
    
    for(NSString *singleScore in scoresArray){
        sumScore += [singleScore intValue];
    }
    
    averageScore = sumScore / count;
    
    
    NSMutableArray *seatingArray = [NSMutableArray arrayWithObjects:@"Page", @"Chris", @"Ernest",
                                    @"Mike", @"Jon", nil];
    
    // Remove certain index element
    
    [seatingArray removeObjectAtIndex:3];
    
    // Remove element by content
    
    [seatingArray removeObjectIdenticalTo:@"Page"];
    
    // Add element at certain index
    
    [seatingArray insertObject:@"Phil" atIndex:1];
    
    
    // New lecture
    // Example for NSArray
    
    // Create enum
    
    typedef enum orderItem{
        Bucket = 1,
        Sandwich = 2,
        Soda = 3,
        FamilyDeal = 4,
        DoubleTrouble = 5,
        LonelyBird = 6
    }orderItem;
    
    // Define price
    float chickenBucketPrice = 10.0;
    float chickenSandwichPrice = 3.25;
    float sodaPrice = 2.0;
    float familyDealPrice = 15.0;
    float doubleTroublePrice = 9.5;
    float lonelyBirdPrice = 5.0;
    
    // Define cost
    float chickenBucketCost = 3.75;
    float chickenSandwichCost = 1.25;
    float sodaCost = 0.25;
    float familyDealCost = 4.75;
    float doubleTroubleCost = 4.5;
    float lonelyBirdCost = 1.50;
    

    
    NSArray *kfcOrderArray1= @[ @(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich),
                                @(DoubleTrouble)];
  
    //NSArray *kfcOrderArray2 = @[ @(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda)];

    float profit = 0.0;
    
    for(NSNumber* item in kfcOrderArray1){
        
        switch ([item integerValue]){
            case Bucket:
                profit += (chickenBucketPrice-chickenBucketCost);
                break;
                
            case Sandwich:
                profit += (chickenSandwichPrice-chickenSandwichCost);
                break;
                
            case Soda:
                profit += (sodaPrice-sodaCost);
                break;
                
            case FamilyDeal:
                profit += (familyDealPrice-familyDealCost);
                break;
                
            case DoubleTrouble:
                profit += (doubleTroublePrice-doubleTroubleCost);
                break;
                
            case LonelyBird:
                profit += (lonelyBirdPrice-lonelyBirdCost);
                break;
                
            default:
                NSLog(@"error");
                break;
                
        
        
        
        }
        
        
    }
    
    
    //New Lecture: Create Customer Class
    //use the TableCheck.h and .m
    
    
    // create instance/object of a customerized class
    TableCheck *table1 = [[TableCheck alloc]init];
    
//    table1.subtotal = 15.00;
//    table1.tip = 5.00;
    table1.isTakeOut = YES;
    
    
    
    // Get the value from created object
    // Assigned to new variable
    float savedTip = table1.tip;
    

    // New lecture + MenuItem.h and .m continue the previous one.
    
    MenuItem *grilledChese = [[MenuItem alloc]init];
    grilledChese.itemName = @"Grilled Chese";
    grilledChese.itemPrice = 4.50;
    grilledChese.isDrink = NO;
    
    MenuItem *soupDuJour = [[MenuItem alloc] init];
    soupDuJour.itemName = @"Soup DuJour";
    soupDuJour.itemPrice = 3.25;
    soupDuJour.isDrink = NO;
    

    
    // MUST alloc memory for NSMutableArray/ NSArray/ NSDictionary... objects.
    // But this init method should be in customized class instad
    // table1.iteamOrdered = [[NSMutableArray alloc]init];
    
    
//    [table1.iteamOrdered insertObject:grilledChese atIndex:0];
//    table1.subtotal += grilledChese.itemPrice;ß
//    
//    
//    [table1.iteamOrdered addObject:soupDuJour];
//    table1.subtotal += soupDuJour.itemPrice;
    
    
    
    
    //New Lecture: Method
    
    // creat method
    // 1. add menu iteam to tableCheck.iteamOrdered
    // 2. add menuItem.itemPrice to tableCheck.subtotal
    
    // use the method created in TableCheck.m
    [table1 addMenuItem: grilledChese];
    
    [table1 addMenuItem:soupDuJour];
    
    [table1 addTax];
    
    // New Lecture: Inheritance
    
    
    
    GroupTableCheck *group1 = [[GroupTableCheck alloc]init];
    [group1 addMenuItem:grilledChese];
    [group1 addMenuItem:grilledChese];
    [group1 addMenuItem:grilledChese];
    [group1 addTips];
    group1.numberOfCustomers = 4;
    // use method from child class: GroupTableCheck
    [group1 checkMinimum];
  
    // New Lecture: Composition
    
    CateringOrder *catering1 = [[CateringOrder alloc]init];
    
    [catering1 addMenuChoice:grilledChese];
    [catering1 addMenuChoice:soupDuJour];
    
    [catering1 setItemQty:grilledChese withQty:4];
    
    //Dynamic typing and Polymorphism
    
    
    
    
    
    return 0;
}


















