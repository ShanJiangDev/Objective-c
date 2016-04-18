//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Shan on 4/17/16.
//  Copyright © 2016 Shan. All rights reserved.
//

#import "PlaylistDetailViewController.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // change label text after segue
    // Because that segueLabelText is not a UI property. So its loaded at the very instance that this playlistDetailViewController is created.
    self.buttonPressLabel.text = self.segueLabelText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
