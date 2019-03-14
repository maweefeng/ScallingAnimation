//
//  PhotoViewController.m
//  DEMO
//
//  Created by Alex wee on 2018/12/17.
//  Copyright © 2018年 Alex wee. All rights reserved.
//

#import "PhotoViewController.h"
#import "ScalingDismissAnimator.h"

@interface PhotoViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation PhotoViewController
-(void)viewDidAppear:(BOOL)animated{
    self.transitioningDelegate = self;
    [super viewDidAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view.
}

- (IBAction)dismiss:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return   [[ScalingDismissAnimator alloc]init];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
