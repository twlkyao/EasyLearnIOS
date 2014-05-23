//
//  AlienTechViewController.h
//  MusicPlayer
//
//  Created by Jack on 5/23/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AlienTechViewController : UIViewController {
    AVAudioPlayer *player;
    IBOutlet UILabel *label;
    IBOutlet UIButton *playButton;
    IBOutlet UIButton *pauseButton;
    IBOutlet UIButton *stopButton;
}
- (IBAction)play:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)stop:(id)sender;

@end
