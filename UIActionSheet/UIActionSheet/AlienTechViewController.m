//
//  AlienTechViewController.m
//  UIActionSheet
//
//  Created by Jack on 5/11/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController
@synthesize userOutput;

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

- (IBAction)actionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Hello" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Destroy" otherButtonTitles:@"Negotiate", @"Compromiss"           , nil]; // Construct an UIActionSheet with some title
    [actionSheet showInView:self.view];
}

- (void) actionSheet:(UIActionSheet *) actionsheet clickedButtonAtIndex: (NSInteger) buttonIndex { // The first actionSheet must be the same with the IBAction actionSheet, because you have delegate the IBAction to itself.
    NSString *buttonTitle = [actionsheet buttonTitleAtIndex:buttonIndex];
    if([buttonTitle isEqualToString:@"Destroy"]) {
        userOutput.text = @"Clicked Destroy";
    } else if([buttonTitle isEqualToString:@"Negotiate"]) {
        userOutput.text = @"Clicked Negotiate";
    } else if([buttonTitle isEqualToString:@"Compromiss"]) {
        userOutput.text = @"Clicked Compromiss";
    } else {
        userOutput.text = @"Clicked Cancel";
    }

}
@end
