//
//  AlienTechViewController.m
//  Segment
//
//  Created by Jack on 5/11/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController

@synthesize view1;
@synthesize view2;
@synthesize segmentControl;

- (void)viewDidLoad
{
    // Add target for the segmentControl.
    [segmentControl addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];

    [self.view1 setHidden:NO]; // Display the view1 on load.
    [self.view2 setHidden:YES]; // Hide the view2 on load.
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) segmentChanged: (id) sender
{
    NSInteger selectedSegment = [segmentControl selectedSegmentIndex]; // Get the index of the selected segment.
    if(0 == selectedSegment) { // The view1 is selected.
        [self.view1 setHidden:NO]; // Display the view1.
        [self.view2 setHidden:YES]; // Hidden the view2.
    } else if(1 == selectedSegment) { // The view2 is selected.
        [self.view1 setHidden: YES]; // Hidden the view1.
        [self.view2 setHidden:NO]; // Display the view2.
    }
}

@end
