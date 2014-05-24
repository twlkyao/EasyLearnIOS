//
//  AlienTechViewController.m
//  SecondMusicPlayer
//
//  Created by Jack on 5/23/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController 

- (void)viewDidLoad
{

    NSString *path = [[NSBundle mainBundle] pathForResource:@"bubble" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    player = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    player.delegate = self;
    player.volume = 1; // Set volume.
    player.numberOfLoops = -1; // Loop play the music until stop.
    [player prepareToPlay];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(playProgress) userInfo:nil repeats:YES]; // Use NSTimer to monitor the progress of the audio.
    [volumeSlider addTarget:self action:@selector(volumeChange) forControlEvents:UIControlEventValueChanged]; // Set method for progress view.

    volumeSlider.minimumValue = 0.0f; // Minium volume.
    volumeSlider.maximumValue = 10.0f; // Maxium volume.
    volumeSlider.value = 5.0f; // Initiate volume.

    [self.view addSubview:volumeSlider];
    //[uiSwitch addTarget:self action:@selector(onOrOff:) forControlEvents:UIControlEventValueChanged];
    //uiSwitch.on = YES;
    //[self.view addSubview:uiSwitch];
    float duration = (float)player.duration; // The length of the audio.
    NSLog(@"duration:%f", duration);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

// Control the play status.
- (IBAction)aa:(id)sender {
    NSInteger selectedSegment = segment.selectedSegmentIndex;
    if(0 == selectedSegment) {
        [player play];
    } else if(1 == selectedSegment) {
        [player pause];
    } else {
        [player stop];
    }
}

// Set progress view.
- (void) playProgress {
    progressView.progress = player.currentTime / player.duration;
}

// Set mute.
- (void) onOrOff: (UISwitch *) sender {
    player.volume = sender.on;
}

// Volume control.
- (void) volumeChange {
    player.volume = volumeSlider.value;
}

// Call this method on finish playing.
- (void) audioPlayerDidFinishPlaying: (AVAudioPlayer *)player successfully:(BOOL)flag {
    [timer invalidate];
}

@end
