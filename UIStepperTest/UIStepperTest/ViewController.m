//
//  ViewController.m
//  UIStepperTest
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
    UIStepper * stepper = [[UIStepper alloc]init];
    stepper.center = CGPointMake(100, 100);  //设置控件中心的位置
    stepper.continuous = YES;  //YES时，用户按住按钮不松开h触发方法会一直执行
    stepper.autorepeat = YES;   //YES时，用户按住按钮后会一直连续改变，NO时，直到用户松开按住按钮的手时改变
    stepper.wraps = YES;    //设置步进控制器是否循环，YES时，当值增加到最大时画又从最小值开始执行NO时达到最大禁用
    stepper.minimumValue = 1;   //最小值
    stepper.maximumValue = 10;  //最大值
    stepper.stepValue = 1;       //设置步长及g每次改变大小
    stepper.tintColor = [UIColor redColor];    //设置控件颜色
    [self.view addSubview:stepper];
    [stepper addTarget:self action:@selector(click:)     forControlEvents:UIControlEventValueChanged];
    
    //通过以下方法设置两个按钮图片
   // [stepper setDecrementImage:[[UIImage imageNamed:@ "image"]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
   // [stepper setIncrementImage:[[UIImage imageNamed:@"image"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
}
-(void)click:(UIStepper *)step{   //click：方法    打印UIStepper控件的值
    NSLog (@"%f",step.value);
}

@end
