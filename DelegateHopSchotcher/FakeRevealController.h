//
//  FakeRevealController.h
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import <UIKit/UIKit.h>


@class MainViewController;
@class FakeStickyViewController;

@interface FakeRevealController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) MainViewController *mVC;
@property (strong, nonatomic) FakeStickyViewController *fakeStickyVC;

@end
