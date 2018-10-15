//
//  ViewController.m
//  UIActivityIndicatorView
//
//  Created by 詹相银 on 2018/10/15.
//  Copyright © 2018年 詹相银. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIActivityIndicatorView * indicator =
    [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    indicator.center = CGPointMake(self.view.frame.size.width/2,self.view.frame.size.height/2);
  
    indicator.color = [UIColor blackColor];
    
    [self.view addSubview:indicator];
   
    [indicator startAnimating];  //    另外调用stopAnimating使指示器停止转动

//  initWithActivityIndicatorStyle:方法通过一个风格e枚举来对控件进行初始化，UIActivityIndicatorViewStyle作为枚举的值意义如下
//typedef NS_ENUM(NSInteger, UIActivityIndicatorViewStyle） {
 //UIActivityIndicatorViewStyleWhiteLarge,     //大号白色风格
//  UIActivityIndicatorViewStylewhite,   //白色风格
//  UIActivityIndicatorVIewStyleGray,    //灰色风格
//};

}
@end
