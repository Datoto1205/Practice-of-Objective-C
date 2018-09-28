//
//  VirtualViewController.m
//  PracticeOfTable
//
//  Created by 李政恩 on 28/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import "VirtualViewController 21-01-24-208.h"

@interface VirtualViewController ()
@property (strong, nonatomic) UIView* headerView;
@property (strong, nonatomic) UILabel* anotherLabelInVirtualPage;
@end

@implementation VirtualViewController

@synthesize headerView;
@synthesize anotherLabelInVirtualPage;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    headerView = [[UIView alloc] init];
    headerView = self.view;
    headerView.backgroundColor = [UIColor colorWithRed:144/255.0 green:144/255.0 blue:144/255.0 alpha:1];
    
    anotherLabelInVirtualPage = [[UILabel alloc] init];
    anotherLabelInVirtualPage.text = @"Hi";
    anotherLabelInVirtualPage.textAlignment = NSTextAlignmentCenter;
    anotherLabelInVirtualPage.font = [UIFont boldSystemFontOfSize: 15];
    [headerView addSubview:anotherLabelInVirtualPage];
    anotherLabelInVirtualPage.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:anotherLabelInVirtualPage attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:150];
    [headerView addConstraint:widthConstraint];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:anotherLabelInVirtualPage attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:200];
    [headerView addConstraint:heightConstraint];
    
    NSLayoutConstraint *verticalConstraint = [NSLayoutConstraint constraintWithItem:anotherLabelInVirtualPage attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:headerView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [headerView addConstraint:verticalConstraint];
    
    NSLayoutConstraint *horizopntalConstraint = [NSLayoutConstraint constraintWithItem:anotherLabelInVirtualPage attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:headerView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
    [headerView addConstraint:horizopntalConstraint];
    
    // The first website about AutoLayout with objective-c: http://ios.jobbole.com/85829/
    // The second website about AutoLayout with objective-c: https://medium.com/@denkeni/純程式碼-auto-layout-與概要教學-一-6077dd73dd3f
    // The third website about AutoLayout with objective-c: https://medium.com/@Dougly/a-uiviewcontroller-and-uiviews-without-storyboard-swift-3-543096e78f2
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
