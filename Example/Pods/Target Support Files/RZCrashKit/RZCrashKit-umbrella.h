#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSObject+RZCrashProtect.h"
#import "RZCrashKit.h"
#import "RZCrashProtectHandler.h"

FOUNDATION_EXPORT double RZCrashKitVersionNumber;
FOUNDATION_EXPORT const unsigned char RZCrashKitVersionString[];

