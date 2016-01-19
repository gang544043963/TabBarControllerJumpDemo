//
//  TabbarViewController.m
//  TabBarControllerJumpDemo
//
//  Created by ligang on 16/1/19.
//  Copyright © 2016年 L&G. All rights reserved.
//

#import "TabbarViewController.h"
#import "Item1FirstViewController.h"
#import "Item2FirstViewController.h"
#import "UIManager.h"

@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Item1FirstViewController *item1 = [[Item1FirstViewController alloc] init];
    Item2FirstViewController *item2 = [[Item2FirstViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:item1];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:item2];
    [self addChildViewController:nav1];
    [self addChildViewController:nav2];
    nav1.tabBarItem.title = @"first";
    nav2.tabBarItem.title = @"second";
    
    [UIManager sharedInstance].tabbarViewController = self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

@end
