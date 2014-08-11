//
//  SBColorSegue.m
//  SlideBar
//
//  Created by Rudy Jahchan on 8/10/14.
//  Copyright (c) 2014 Sample. All rights reserved.
//

#import "SBColorSegue.h"
#import "SBViewController.h"
#import "SBColorViewController.h"

@implementation SBColorSegue

- (void)perform {
    SBViewController *viewController = self.sourceViewController;
    SBViewController *colorController = self.destinationViewController;
    
    CGRect frame = viewController.containerView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    colorController.view.frame = frame;
    [viewController addChildViewController:colorController];
    [viewController.colorController willMoveToParentViewController:nil];
    
    [viewController transitionFromViewController:viewController.colorController toViewController:colorController duration:0.5 options:(UIViewAnimationOptionTransitionFlipFromLeft) animations:^{
    } completion:^(BOOL finished) {
        if(finished) {
            [colorController didMoveToParentViewController:viewController];
            [viewController.colorController removeFromParentViewController];
            viewController.colorController = colorController;
        }
    }];
}

@end
