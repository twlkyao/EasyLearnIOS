//
//  AlienTechSecondViewController.m
//  ViewSwitch
//
//  Created by Jack on 5/13/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechSecondViewController.h"

@interface AlienTechSecondViewController ()

@end

@implementation AlienTechSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnReturn:(id)sender {
    [self.view removeFromSuperview]; // Delete the view.
}
@end
