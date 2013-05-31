//
//  FakeRevealController.m
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "FakeRevealController.h"
#import "MainViewController.h"

@interface FakeRevealController ()

@end

@implementation FakeRevealController

@synthesize mVC = _mVC;

- (UINavigationController *)mVC
{
    if (!_mVC) {
        _mVC = [[UINavigationController alloc] init];
    }
    return _mVC;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self addChildViewController:self.mVC];
        [self.view addSubview:self.mVC.view];
        [self.mVC.view setFrame:CGRectMake(0, 0, 320, 568)];
        [self.mVC didMoveToParentViewController:self];
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [btn setFrame:CGRectMake(20, 20, 60, 40)];
//        [self.view addSubview:btn];
    }
    return self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%f",scrollView.contentOffset.x);
}

@end
