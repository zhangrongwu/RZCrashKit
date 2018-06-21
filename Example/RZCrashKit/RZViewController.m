//
//  RZViewController.m
//  RZCrashKit
//
//  Created by zhangrongwu on 06/21/2018.
//  Copyright (c) 2018 zhangrongwu. All rights reserved.
//

#import "RZViewController.h"

@interface RZViewController ()

@end

@implementation RZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(10, 55, self.view.frame.size.width - 2 * 10, 50);
    [btn setTitle:@"发消息" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(messageBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

//- (void)messageBtnClick {
//
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
