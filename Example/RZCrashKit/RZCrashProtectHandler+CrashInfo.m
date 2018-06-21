//
//  RZCrashProtectHandler+CrashInfo.m
//  RZCrashKit_Example
//
//  Created by zhangrongwu on 2018/6/21.
//  Copyright © 2018年 zhangrongwu. All rights reserved.
//

#import "RZCrashProtectHandler+CrashInfo.h"

@implementation RZCrashProtectHandler (CrashInfo)
- (void)RZCrashProtectCollectCrashMessages {
    NSLog(@"回调错误处理：%@", self.crashMessages);
}
@end
