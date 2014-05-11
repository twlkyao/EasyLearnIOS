//
//  AlienTechViewController.h
//  Segment
//
//  Created by Jack on 5/11/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlienTechViewController : UIViewController
{
    IBOutlet UIView *view1; // The first view.
    IBOutlet UIView *view2; // The second view.
    IBOutlet UISegmentedControl *segmentControl; // The UISegmentControl.
}
@property (retain, nonatomic) IBOutlet UIView *view1;
@property (retain, nonatomic) IBOutlet UIView *view2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentControl;

@end
