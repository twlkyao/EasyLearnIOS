//
//  AlienTechViewController.m
//  First
//
//  Created by Jack on 4/24/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "AlienTechViewController.h"

@interface AlienTechViewController ()

@end

@implementation AlienTechViewController
@synthesize resultLabel; // result label.
@synthesize adviceLabel; // advice label.
@synthesize shareButton; // share button.

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

  // method for calc.
- (IBAction)calc:(id)sender {

    // hide the keyboard.
    [self.view endEditing: YES];

    // Get the views.
    UITextField *height = (UITextField *)[self.view viewWithTag: 12];
    UITextField *weight = (UITextField *)[self.view viewWithTag: 13];

    // Get the input strings.
    NSString *heightString = [height text];
    NSString *weightString = [weight text];

    // Convert the string to float.
    float heightFloat = [heightString floatValue];
    float weightFloat = [weightString floatValue];


    // Calculate the result.
    float result = [self getHeight: heightFloat withWeight: weightFloat];

    // set the result.
    NSString *aString = [NSString stringWithFormat:@"%f", result];
    resultLabel.text = [@"Result:" stringByAppendingString: aString];
    UITextField *gender = (UITextField *)[self.view viewWithTag: 11];
    NSString *genderString = [gender text];

    // convert the string into lower case, and then compare.
    if ([[genderString lowercaseString] containsString: @"male"]) {
        if(result > 30) {
            adviceLabel.text = @"Boy, you are a heavy.";
        } else if(result >= 25) {
            adviceLabel.text = @"Boy, you are a little heavy.";
        } else if(result >= 20) {
            adviceLabel.text = @"Boy, your figure are OK.";
        } else {
            adviceLabel.text = @"Boy, you are a little thin.";
        }
    } else if ([[genderString lowercaseString] containsString: @"female"]) {
        if(result > 29) {
            adviceLabel.text = @"Girl, you are heavy.";
        } else if(result >= 24) {
            adviceLabel.text = @"Girl, you are a little heavy.";
        } else if(result >= 18) {
            adviceLabel.text = @"Girl, your figure are OK.";
        } else {
            adviceLabel.text = @"Girl, you are a little thin.";
        }
    }
}

  // judge whether a string is null, empty or blank.
- (BOOL) isBlankString:(NSString *)string {
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

  // method for share.
- (IBAction)share:(id)sender {
    NSString* baseResult = @"I am using an BMI App, the result is: ";

    // append the string.
    NSString* result = [baseResult stringByAppendingString: resultLabel.text];

    // log the result to repalce share, integrate share later.
    NSLog(@"%@", result);
}

    // Calculate the BMI.
- (float) getHeight: (float) height withWeight: (float) weight {
    float result = 0.0f;
    result = weight / powf(height / 100, 2);
    return result;
}
@end
