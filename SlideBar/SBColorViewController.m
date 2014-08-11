//
//  SBColorViewController.m
//  SlideBar
//
//  Created by Rudy Jahchan on 8/10/14.
//  Copyright (c) 2014 Sample. All rights reserved.
//

#import "SBColorViewController.h"

void SBLogColor(SBColorViewController *controller, SEL message, BOOL animated) {
    NSLog(@"%@ - %@ : %d", controller.title, NSStringFromSelector(message), animated);
}

@interface SBColorViewController ()

@end

@implementation SBColorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    SBLogColor(self, _cmd, false);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    SBLogColor(self, _cmd, animated);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    SBLogColor(self, _cmd, animated);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    SBLogColor(self, _cmd, animated);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    SBLogColor(self, _cmd, animated);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
