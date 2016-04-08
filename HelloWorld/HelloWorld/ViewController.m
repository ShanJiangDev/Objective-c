//
//  ViewController.m
//  HelloWorld
//
//  Created by Shan on 4/4/16.
//  Copyright (c) 2016 Shan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testButton:(id)sender {
    int height_feet = 5;
    int height_inches = 11;
    double height_cm = ((height_feet * 12) + height_inches) * 2.54;
    
    if(height_cm > 200.00){
        self.testLabel.text = @"More then 2 meters!";
    }else{
        self.testLabel.text = @"Less then 2 meters!";
    }
}

@end
