//
//  Item1FirstViewController.m
//  TabBarControllerJumpDemo
//
//  Created by ligang on 16/1/19.
//  Copyright © 2016年 L&G. All rights reserved.
//

#import "Item1FirstViewController.h"
#import "Item1SecondViewController.h"

@interface Item1FirstViewController ()
@end

@implementation Item1FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

- (void)next {
    Item1SecondViewController *secondViewC = [[Item1SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewC animated:YES];
}


@end
