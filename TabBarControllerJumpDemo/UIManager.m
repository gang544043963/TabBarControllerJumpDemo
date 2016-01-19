//
//  UIManager.m
//  TabBarControllerJumpDemo
//
//  Created by ligang on 16/1/19.
//  Copyright © 2016年 L&G. All rights reserved.
//

#import "UIManager.h"

@implementation UIManager


static UIManager *sharedInstance = nil;
+ (UIManager*)sharedInstance {
    
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        
        if (sharedInstance == nil) {
            sharedInstance = [[UIManager alloc] init];
        }
    });
    return sharedInstance;
}

@end
