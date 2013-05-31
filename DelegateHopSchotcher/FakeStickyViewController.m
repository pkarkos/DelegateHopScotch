//
//  FakeStickyViewController.m
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "FakeStickyViewController.h"

@interface FakeStickyViewController ()

@property (strong, nonatomic) UIScrollView *view;

@end

@implementation FakeStickyViewController

- (id)init
{
    self = [super init];
    if (self) {
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
        [scrollView setBackgroundColor:[UIColor blackColor]];
        [scrollView setAlpha:0.5f];
        [scrollView setContentSize:CGSizeMake(400, 600)];
        [scrollView setBounces:YES];
        [self setView:scrollView];
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [btn setFrame:CGRectMake(20, 20, 60, 40)];
//        [self.view addSubview:btn];
    }
    return self;
}

@end
