//
//  ViewController.m
//  CALayerTest
//
//  Created by 詹相银 on 2018/10/19.
//  Copyright © 2018年 詹相银. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake (100,100,100,100);
    btn.backgroundColor = [UIColor redColor];
    btn.layer.shadowColor = [UIColor grayColor].CGColor;   //设置阴影效果颜色，必须为CGColor对象
    btn.layer.shadowOffset = CGSizeMake(10,10);              //设置与原控件之间的相对偏移
    btn.layer.shadowOpacity = 1;                              //设置阴影的透明度，不设置的话就为全透明
    
//    btn.layer.borderColor = [UIColor greenColor].CGColor;  //设置外边框效果d
 //   btn.layer.borderWidth = 5;                               //边框的宽度
    [self.view addSubview:btn];
    
    //以下的程序 iOS 7 之后无法支持带边框的图形
   // UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
   // btn.frame = CGRectMake(100,100,100,100);
   //btn.backgroundColor = [UIColor redColor];
  //  btn.layer.masksToBounds = YES;  //YES时才会对边框效果显现
  //  btn.layer.cornerRadius = 10;  //设置圆角的半径，如果控件为矩形则只有当设成控件的边长的一半时才会显现成圆形
   // [self.view addSubview:btn];
}


@end
