//
//  FirstViewController.m
//  notificationWork
//
//  Created by Matthew Mauro on 2016-11-13.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import "SecondViewController.h"
#import "FirstViewController.h"

@interface FirstViewController ()
@property double score;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)alterValue:(UIStepper *)sender {
    self.score = sender.value;
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    NSDictionary *updated = @{@"newValue":[NSNumber numberWithDouble:self.score]};
    [center postNotificationName:@"changeValue" object:self userInfo:updated];
}


@end
