//
//  AppDelegate.h
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FakeRevealController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FakeRevealController *fakeRevealController;

@end
