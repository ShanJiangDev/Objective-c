//
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Shan on 4/17/16.
//  Copyright © 2016 Shan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaylistDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *buttonPressLabel;
// Prepare to change the label text after segue
@property (strong,nonatomic) NSString *segueLabelText;





@end
