//
//  AlienTechViewController.h
//  UIActionSheet
//
//  Created by Jack on 5/11/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlienTechViewController : UIViewController<UIActionSheetDelegate> { // Must implements the UIActionSheetDelegate protocol.
    IBOutlet UILabel *userOutput; // The label output.
}
@property (retain, nonatomic) IBOutlet UILabel *userOutput;

- (IBAction)actionSheet:(id)sender;

@end
