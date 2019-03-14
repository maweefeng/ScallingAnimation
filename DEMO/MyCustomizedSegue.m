//
//  MyCustomizedSegue.m
//  DEMO
//
//  Created by Alex wee on 2018/12/17.
//  Copyright © 2018年 Alex wee. All rights reserved.
//

#import "MyCustomizedSegue.h"
#import "ScalingPresentationAnimator.h"
#import "ScalingDismissAnimator.h"


@implementation MyCustomizedSegue


-(void)perform{
    
    self.destinationViewController.transitioningDelegate = self;
    [super perform];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{

    return   [[ScalingDismissAnimator alloc]init];
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{

 return   [[ScalingPresentationAnimator alloc]init];

}

@end

