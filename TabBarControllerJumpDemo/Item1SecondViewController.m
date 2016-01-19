//
//  Item1SecondViewController.m
//  TabBarControllerJumpDemo
//
//  Created by ligang on 16/1/19.
//  Copyright © 2016年 L&G. All rights reserved.
//

#import "Item1SecondViewController.h"
#import "UIManager.h"

@interface Item1SecondViewController ()

@end

@implementation Item1SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//偷梁换柱在这里……
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [UIManager sharedInstance].tabbarViewController.selectedIndex = 0;
    [self.navigationController setViewControllers:@[[UIManager sharedInstance].tabbarViewController,self]];
}

@end
