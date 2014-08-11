//
//  SBViewController.m
//  SlideBar
//
//  Created by Rudy Jahchan on 8/10/14.
//  Copyright (c) 2014 Sample. All rights reserved.
//

#import "SBViewController.h"

@interface SBViewController ()

@property (nonatomic) NSUInteger lastSelectedSegmentIndex;

- (IBAction)didSelectSegment:(id)sender;

@end

@implementation SBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.lastSelectedSegmentIndex = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didSelectSegment:(id)sender {
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    UIView *fromView = self.view.subviews[self.lastSelectedSegmentIndex];
    UIView *toView = self.view.subviews[segmentControl.selectedSegmentIndex];
    [UIView transitionFromView:fromView
                        toView:toView
                      duration:0.5
                       options:(UIViewAnimationOptionShowHideTransitionViews|UIViewAnimationOptionTransitionFlipFromLeft) completion:^(BOOL finished) {
                           if (finished) {
                               self.lastSelectedSegmentIndex = segmentControl.selectedSegmentIndex;
                           }
                       }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"%@ %@ %@", NSStringFromSelector(_cmd), segue, sender);
}

@end
