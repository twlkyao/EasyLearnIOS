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
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle: @"HelloWorld" message:@"Hello iOS!" delegate: self cancelButtonTitle: @"Cancel" otherButtonTitles: nil];
    [alertView show];
}
@end
