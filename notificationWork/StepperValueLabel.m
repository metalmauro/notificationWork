//
//  StepperValueLabel.m
//  notificationWork
//
//  Created by Matthew Mauro on 2016-11-13.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "StepperValueLabel.h"

@implementation StepperValueLabel
-(id) init
{
    self = [super init];
    if (self)
    {
        NSNotificationCenter* center = [NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(updateStepValue:) name:@"changeValue" object:nil];
        self.text = @"";
    }
    
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)updateStepValue:(NSNotification*)notification
{
    NSNumber *value = notification.userInfo[@"newValue"];
    self.text = [NSString stringWithFormat:@"%@", value];
    
}


@end
