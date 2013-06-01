//
//  FakeRevealController.m
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "FakeRevealController.h"
#import "MainViewController.h"
#import "FakeStickyViewController.h"


@interface FakeRevealController ()



@end

@implementation FakeRevealController

@synthesize mVC = _mVC;
@synthesize fakeStickyVC = _fakeStickyVC;

- (FakeStickyViewController *)fakeStickyVC
{
    if (!_fakeStickyVC) {
        _fakeStickyVC = [[FakeStickyViewController alloc] init];
    }
    return _fakeStickyVC;
}

- (MainViewController *)mVC
{
    if (!_mVC) {
        _mVC = [[MainViewController alloc] initWithRootViewController:self.fakeStickyVC];
    }
    return _mVC;
}


- (id)init
{
    self = [super init];
    if (self) {
        [self.view setBackgroundColor:[UIColor yellowColor]];
       // [self.mVC setDelegate:(id<UIScrollViewDelegate>)self];
        [self setMVC:_mVC];
        [self addChildViewController:self.mVC];
        [self.view addSubview:self.mVC.view];
        [self.mVC.view setFrame:CGRectMake(0, 0, 320, 568)];
        [self.mVC didMoveToParentViewController:self];
        
    }
    return self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%f",scrollView.contentOffset.x);
}

@end
