//
//  ViewController.m
//  Funfact
//
//  Created by shan jiang on 15/04/16.
//  Copyright © 2016 Shan Jiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)showFunFact {
    self.FunFactLabel.text = @"Fun fact";
}

@end
