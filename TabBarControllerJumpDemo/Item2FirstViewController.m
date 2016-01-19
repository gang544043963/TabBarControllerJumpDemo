//
//  Item2FirstViewController.m
//  TabBarControllerJumpDemo
//
//  Created by ligang on 16/1/19.
//  Copyright © 2016年 L&G. All rights reserved.
//

#import "Item2FirstViewController.h"
#import "Item1SecondViewController.h"
#import "UIManager.h"

@interface Item2FirstViewController ()

@end

@implementation Item2FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

- (void)next {
    Item1SecondViewController *secondViewC = [[Item1SecondViewController alloc] init];
    //注意：这里不是self.navigationController
    [[UIManager sharedInstance].tabbarViewController.navigationController pushViewController:secondViewC animated:YES];
}
@end
