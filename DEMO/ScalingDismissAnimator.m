//
//  ScalingDismissAnimator.m
//  DEMO
//
//  Created by Alex wee on 2018/12/17.
//  Copyright © 2018年 Alex wee. All rights reserved.
//

#import "ScalingDismissAnimator.h"

@implementation ScalingDismissAnimator
-(void)animateTransitionEvent{
    
    [self.containerView addSubview:self.toViewController.view];
    [self.containerView addSubview:self.fromViewController.view];
    [UIView animateWithDuration:self.transitionDuration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.fromViewController.view.transform = CGAffineTransformMakeScale(0.1, 0.1);
    } completion:^(BOOL finished) {
        [self completeTransition];
    }];
    
}
@end
