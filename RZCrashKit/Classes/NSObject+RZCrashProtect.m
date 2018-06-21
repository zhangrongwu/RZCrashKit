//
//  NSObject+RZCrashProtect.m
//  Pods-RZCrashKit_Example
//
//  Created by zhangrongwu on 2018/6/21.
//

#import "NSObject+RZCrashProtect.h"
#import "RZCrashProtectHandler.h"
#import <objc/runtime.h>

@implementation NSObject (RZCrashProtect)



#pragma mark --- unrecognized selector sent to instance

#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wobjc-protocol-method-implementation"

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *methodName = NSStringFromSelector(aSelector);
    if ([NSStringFromClass([self class]) hasPrefix:@"_"] ||
        [self isKindOfClass:NSClassFromString(@"UITextInputController")] ||
        [NSStringFromClass([self class]) hasPrefix:@"UIKeyboard"] ||
        [methodName isEqualToString:@"dealloc"]) {
        return nil;
    }
    RZCrashProtectHandler *protectHandler = [RZCrashProtectHandler new];
    protectHandler.crashMessages = [NSString stringWithFormat:@"RZCrashProtectHandler: [%@  %p %@]: unrecognized selector sent to instance", NSStringFromClass([self class]), self, NSStringFromSelector(aSelector)];
    class_addMethod([RZCrashProtectHandler class], aSelector, [protectHandler methodForSelector:@selector(RZCrashProtectCollectCrashMessages)], "v@:");
    return protectHandler;
}

@end
