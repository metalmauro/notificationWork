//
//  StepperValueLabel.h
//  notificationWork
//
//  Created by Matthew Mauro on 2016-11-13.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepperValueLabel : UILabel

-(void)updateStepValue:(NSNotification*)notification;

@end
