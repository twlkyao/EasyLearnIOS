//
//  AlienTechViewController.h
//  First
//
//  Created by Jack on 4/24/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlienTechViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelGender;
@property (weak, nonatomic) IBOutlet UILabel *labelHeight;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UILabel *labelWeight;
- (IBAction)calc:(id)sender;
- (IBAction)share:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *adviceLabel;
@end
