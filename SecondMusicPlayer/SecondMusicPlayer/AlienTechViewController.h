//
//  AlienTechViewController.h
//  SecondMusicPlayer
//
//  Created by Jack on 5/23/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AlienTechViewController : UIViewController <AVAudioPlayerDelegate> {

    IBOutlet UISegmentedControl *segment; // SegmentedControl.
    AVAudioPlayer *player; // Player.
    IBOutlet UIProgressView *progressView; // ProgressView.
    IBOutlet UISlider *volumeSlider; // Volume slider.
    
    IBOutlet UISwitch *uiSwitch;
    NSTimer *timer; // Timer.
}
- (IBAction)aa:(id)sender;
@end
