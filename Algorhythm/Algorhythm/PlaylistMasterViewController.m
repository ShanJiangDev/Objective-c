//
//  ViewController.m
//  Algorhythm
//
//  Created by Shan on 4/16/16.
//  Copyright © 2016 Shan. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Pressme me! " forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqual:@"showPlaylistDetail"]){
        
        // segue.destinationViewController return a view controller with type "id"
        // so we need to cast this "id" into type "PlaylistDetailViewController"
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        // In this method, the destination view controller -- PlaylistDetailViewController isnt fully loaded when we call this method.
        // Therefore we can not directelly call the button from the destination view.
        // We can only change the property of PlaylistDetailViewController inside itself.
        
        
        // After created a NSString property in PlaylistDetailViewController and assign its value to label, Here we give the value of this nsstring.
        playlistDetailController.segueLabelText = @"Yeah, you pressed the button";
        
        
    }

    



}

@end
