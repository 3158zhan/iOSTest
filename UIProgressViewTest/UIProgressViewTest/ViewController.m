//
//  ViewController.m
//  UIProgressViewTest
//
//  Created by 詹相银 on 2018/10/16.
//  Copyright © 2018年 詹相银. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIProgressView * progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(20, 100, 280, 30)];
    progressView.progressTintColor = [UIColor redColor];  //走过的进度颜色
    progressView.trackTintColor = [UIColor blueColor]; //未走过的进度颜色
    [self.view addSubview:progressView];
    progressView.progress = 0.5;  //设置当前进度 0～1之间的浮点数
    
}


@end
