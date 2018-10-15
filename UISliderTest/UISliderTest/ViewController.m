//
//  ViewController.m
//  UISliderTest
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
    UISlider * slider = [[UISlider alloc]initWithFrame:CGRectMake(10,100,280,30)];
    slider.continuous = YES;   //设置UISlider控件是否为连续触发
    slider.minimumValue = 0;   //设置最小值，最左端值
    slider.maximumValue = 10;  //设置最大值，最右端值
    slider.minimumTrackTintColor = [UIColor redColor];   //设置以左中轴颜色
    slider.maximumTrackTintColor = [UIColor greenColor];  //maximumTrackColor设置以右中轴颜色
    slider.thumbTintColor = [UIColor blueColor];  //设置滑块本身颜色
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
    
    slider.minimumValueImage = [UIImage imageNamed:@"image"];  //设置左视图图片
    slider.maximumValueImage = [UIImage imageNamed:@"image"];    //设置右视图图片
    [slider setThumbImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
    
}
-(void)changeValue:(UISlider *)slider{
    NSLog(@"%f",slider.value);   //获取当前值并进行逻辑处理
}

@end
