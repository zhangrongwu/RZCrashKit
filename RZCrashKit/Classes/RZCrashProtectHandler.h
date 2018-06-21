//
//  RZCrashProtectHandler.h
//  Pods-RZCrashKit_Example
//
//  Created by zhangrongwu on 2018/6/21.
//

#import <Foundation/Foundation.h>

@interface RZCrashProtectHandler : NSObject

@property (nonatomic, strong)NSString *crashMessages;

- (void)RZCrashProtectCollectCrashMessages;
@end
