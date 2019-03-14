//
//  ScalingPresentationAnimator.m
//  DEMO
//
//  Created by Alex wee on 2018/12/17.
//  Copyright © 2018年 Alex wee. All rights reserved.
//

#import "ScalingPresentationAnimator.h"

@implementation ScalingPresentationAnimator
-(void)animateTransitionEvent{
    
    CGAffineTransform originTransform =self.toViewController.view.transform;
    self.toViewController.view.transform = CGAffineTransformMakeScale(0.1, 0.1);
    [self.containerView addSubview:self.toViewController.view];
    [UIView animateWithDuration:self.transitionDuration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.toViewController.view.transform = originTransform;
    } completion:^(BOOL finished) {
        [self completeTransition];
    }];
    
    
}


@end
