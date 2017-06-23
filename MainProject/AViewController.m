//
//  AViewController.m
//  MainProject
//
//  Created by XueliangZhu on 23/06/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@property (nonatomic, strong) UIButton *BButton;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self configUI];
    [self.BButton addTarget:self action:@selector(showAView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)configUI {
    self.BButton = [[UIButton alloc] initWithFrame:CGRectZero];
    self.BButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.BButton setTitle:@"Push B View" forState:UIControlStateNormal];
    [self.BButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.BButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.view addSubview:self.BButton];
    [[self.BButton.widthAnchor constraintEqualToConstant:120] setActive:YES];
    [[self.BButton.heightAnchor constraintEqualToConstant:40] setActive:YES];
    [[self.BButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
    [[self.BButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
}

- (void)showAView {
    BViewController *bvc = [[BViewController alloc] init];
    [self showViewController:bvc sender:nil];
}

@end
