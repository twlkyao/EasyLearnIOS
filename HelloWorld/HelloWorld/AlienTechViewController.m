//
//  AlienTechViewController.m
//  HelloWorld
//
//  Created by Jack on 4/28/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController
@synthesize userOutput; // Implements the setter and getter for userOutput.

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle: @"HelloWorld" message:@"Hello iOS!" delegate: self cancelButtonTitle: @"Cancel" otherButtonTitles: @"Options1", @"Options2", nil];
    [alertView show];
}


/**
 The self defined function to deal with the options.
 */
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex { // The first part of the function must be "alertView".
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if([buttonTitle isEqualToString:@"Options1"]) {
        userOutput.text = @"Clicked Options1";
    } else if([buttonTitle isEqualToString:@"Options2"]) {
        userOutput.text = @"Clicked Options2";
    } else {
        userOutput.text = @"Clicked Cancel";
    }
}

@end
