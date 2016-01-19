//
//  UIManager.h
//  TabBarControllerJumpDemo
//
//  Created by ligang on 16/1/19.
//  Copyright © 2016年 L&G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TabbarViewController.h"

@interface UIManager : NSObject

@property (nonatomic, strong) TabbarViewController *tabbarViewController;

+ (UIManager*)sharedInstance;

- (void)popToRootVCAtIndex:(NSInteger)index animated:(BOOL)animated;

@end
