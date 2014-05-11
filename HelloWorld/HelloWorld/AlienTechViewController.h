//
//  AlienTechViewController.h
//  HelloWorld
//
//  Created by Jack on 4/28/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlienTechViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *userOutput;
    IBOutlet UILabel *actionOutput;
}
@property (retain, nonatomic) IBOutlet UILabel *userOutput;


- (IBAction)btn:(id)sender;

@end
