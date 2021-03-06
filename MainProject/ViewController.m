//
//  ViewController.m
//  MainProject
//
//  Created by XueliangZhu on 23/06/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "ViewController.h"
#import <A_Category/CTMediator+A.h>
#import <C_Category/CTMediator+C.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *AButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
    
    [self.AButton addTarget:self action:@selector(showAView) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubVC];
}

- (void)configUI {
    self.AButton = [[UIButton alloc] initWithFrame:CGRectZero];
    self.AButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.AButton setTitle:@"Push A View" forState:UIControlStateNormal];
    [self.AButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.AButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.view addSubview:self.AButton];
    [[self.AButton.widthAnchor constraintEqualToConstant:120] setActive:YES];
    [[self.AButton.heightAnchor constraintEqualToConstant:40] setActive:YES];
    [[self.AButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
    [[self.AButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
}

- (void)showAView {
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)addSubVC {
    UIViewController *viewController = [[CTMediator sharedInstance] C_viewController];
    [self addChildViewController:viewController];
    [self.view addSubview:viewController.view];
    viewController.view.translatesAutoresizingMaskIntoConstraints = NO;
    [[viewController.view.widthAnchor constraintEqualToConstant:200] setActive:YES];
    [[viewController.view.heightAnchor constraintEqualToConstant:200] setActive:YES];
    [[viewController.view.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
    [[viewController.view.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor] setActive:YES];
    [viewController didMoveToParentViewController:self];
}

@end
