//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Shan on 4/17/16.
//  Copyright © 2016 Shan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicLibrary : NSObject

// Will append dictionaries to this array.
// Each dictionary will represent a playlist, and will have key value pairs for things like the playlist name, description, artists included, and so on.
@property (strong, nonatomic) NSArray * library;
@end
