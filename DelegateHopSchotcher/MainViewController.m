//
//  MainViewController.m
//  DelegateHopSchotcher
//
//  Created by Andrew Copp on 5/31/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "MainViewController.h"
#import "FakeRevealController.h"
//#import "FakeStickyViewController.h"

@protocol scrollViewDelegate <UIScrollViewDelegate>;
-(void)passAlongScrollViewDelegate:(UIScrollView *)scrollView;

@end
@interface MainViewController ()

@property (strong, nonatomic) FakeRevealController *fakeRevealController;
@end

@implementation MainViewController


- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [super initWithRootViewController:rootViewController];
    if (self) {
       
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn setFrame:CGRectMake(20, 20, 60, 40)];
        [rootViewController.view addSubview:btn];
    }
    return self;
}

-(void)passAlongScrollViewDelegate:(UIScrollView *)scrollView;
{
    //HOW DO I PASS A DELEGATE THROUGH A VC??!?!?!?!?!??!!?!?!
}

//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//{]
//    viewController.delegate self.visibleViewController
//}
//
//- (UIViewController *)popViewControllerAnimated:(BOOL)animated
//{
//    
//}

//- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
//{
//    
//}
//
//- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    
//}

@end
