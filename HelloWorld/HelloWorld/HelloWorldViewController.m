//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Jack on 5/24/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

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

// The application shoud rotate except PortraintUpsideDown(Home button at the bottom.).
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

// The changGreeting: method.
- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text; // Get the text from the textFiled.
    NSString *nameString = self.userName; // Assign it to another variable.
    if(0 == [nameString length]) { // The default name.
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc]initWithFormat:@"Hello, %@!", nameString]; // Format the string.
    self.label.text = greeting; // Update the label.
}

// Resign first responder to hide the keyboard.
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
