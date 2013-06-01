//
//  FakeStickyViewController.m
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "FakeStickyViewController.h"



@interface FakeStickyViewController ()

//@property (strong, nonatomic) UIView *NView;
@property (strong, nonatomic) UIScrollView *scrollView;
@end

@implementation FakeStickyViewController

- (id)init
{
    self = [super init];
    if (self) {
        //self.NView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 400, 460)];
        //UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
        self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 400, 600)];
        [self.scrollView setBackgroundColor:[UIColor blackColor]];
        [self.scrollView setAlpha:0.50f];
        [self.scrollView setContentSize:CGSizeMake(400, 600)];
        [self.scrollView setBounces:YES];

        [self setView:self.scrollView];
        [self.scrollView setDelegate:(id<UIScrollViewDelegate>)self.parentViewController];
    }
    return self;
}

@end
