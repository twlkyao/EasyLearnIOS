//
//  AlienTechViewController.m
//  MusicPlayer
//
//  Created by Jack on 5/23/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController
// The following properties are implemented automatically.
@synthesize label;
@synthesize playButton;
@synthesize pauseButton;
@synthesize stopButton;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle]pathForResource:@"bubble" ofType:@"mp3"]; // Init the file path of the music file.
    NSURL *url = [NSURL fileURLWithPath:path]; // Init the url with the file path.
    if(path) { // The path is valid.
        player = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil]; // Instance a player.
        [player prepareToPlay]; // Prepare to play the music.
        player.numberOfLoops = -1; // Always loop until stop.
        label.text = @"Preparing"; // Set the label.
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The play button.
- (IBAction)play:(id)sender {
    if(player) { // The player is initiated.
        if(![player isPlaying]) { // If the player is not playing, then play it.
            [player play];
            label.text = @"Playing";
        }
    }
}

// The pause button.
- (IBAction)pause:(id)sender {
    if(player) { // The player is initiated.
        if([player isPlaying]) { // If the player is playing, then pause it.
            [player pause];
            label.text = @"Paused";
        }
    }
}

// The stop button.
- (IBAction)stop:(id)sender {
    if(player) { // The palyer is initiated.
        if([player isPlaying]) { // If the player is playing, then stop it.
            [player stop];
            label.text = @"Stopped";
        }
    }
}
@end
