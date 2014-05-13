//
//  AlienTechViewController.m
//  ViewSwitch
//
//  Created by Jack on 5/13/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"
#import "AlienTechSecondViewController.h" // Import the AlienTechSecondViewController.

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController

AlienTechSecondViewController *alienTechSecondViewController; // Instantiate a view.

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

- (IBAction)displayView:(id)sender { // The action of the button.
    alienTechSecondViewController = [[AlienTechSecondViewController alloc]initWithNibName:@"AlienTechSecondViewController" bundle:nil]; // Allocate the view with "AlienTechSecondViewController"

    [self.view addSubview:alienTechSecondViewController.view]; // Add the view to self.view.
}
@end
