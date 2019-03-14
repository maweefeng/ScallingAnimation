//
//  ViewController.m
//  DEMO
//
//  Created by Alex wee on 2018/12/12.
//  Copyright © 2018年 Alex wee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UITableView * tableView;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    //    UILabel * title = [[UILabel alloc]init];
//    title.backgroundColor = [UIColor redColor];
//    [title setText:@"这里是标题"];
//    title.translatesAutoresizingMaskIntoConstraints = NO;
//    title.numberOfLines = 0;
//    [title setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
//    [title setAdjustsFontForContentSizeCategory:YES];
//    [self.view addSubview:title];
//   
//    UILabel * content = [[UILabel alloc]init];
//    [content setText:@"这里是内容"];
//    content.translatesAutoresizingMaskIntoConstraints = NO;
//    content.backgroundColor = [UIColor redColor];
//    content.numberOfLines = 0;
//    [content setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
//    [content setAdjustsFontForContentSizeCategory:YES];
//    [self.view addSubview:content];
//
//    NSLog(@"%@",self.view.traitCollection.preferredContentSizeCategory);
//    NSLog(@"%@",[[UIApplication sharedApplication] preferredContentSizeCategory]);
//    
//    
//    if (self.view.traitCollection.preferredContentSizeCategory > UIContentSizeCategoryLarge ) {
//        //垂直布局
//    }else{
//        //并排布局
//    }
//    
//    [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:40].active = YES;
//    [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200].active = YES;
//    [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:title.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:200].active = YES;
//    [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:40].active = YES;
//
//
//    [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:title attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0].active= YES;
//
//    [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:title attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0].active = YES;
//
//    [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:title attribute:NSLayoutAttributeBottom multiplier:1.0 constant:40].active = YES;
//
//    
////    [content.firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:title.lastBaselineAnchor multiplier:1.0];
//    
//    
//    self.tableView.estimatedSectionHeaderHeight = 20;
//    self.tableView.sectionHeaderHeight = UITableViewAutomaticDimension;
//    self.tableView.estimatedSectionFooterHeight = 20;
//    self.tableView.sectionFooterHeight = UITableViewAutomaticDimension;
//    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier  isEqual: @"PhotoScene"]) {
        
        segue.destinationViewController.view.backgroundColor = [UIColor lightGrayColor];
    }
    
}

- (IBAction)add:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"PhotoScene" sender:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
