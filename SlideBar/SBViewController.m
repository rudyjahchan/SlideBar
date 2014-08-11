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
    switch (segmentControl.selectedSegmentIndex) {
        case 0:
        default:
            [self performSegueWithIdentifier:@"showRed" sender:self];
            break;
            
        case 1:
            [self performSegueWithIdentifier:@"showBlue" sender:self];
            break;
            
        case 2:
            [self performSegueWithIdentifier:@"showGreen" sender:self];
            break;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"embedRed"]) {
        self.colorController = segue.destinationViewController;
    }
}

@end
