//
//  ViewController.m
//  UISegmentedControl
//
//  Created by 詹相银 on 2018/10/15.
//  Copyright © 2018年 詹相银. All rights reserved.
//  UISegmentedControl添加触发方法也是通过addTaget:action:forControlEvents;方法来实现的

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISegmentedControl * seg = [[UISegmentedControl alloc]initWithItems:@[@"one",@"",@"three",@"four"]];
    seg.frame = CGRectMake(20,100,280,30);
    
    [seg setImage:[[UIImage imageNamed:@"image"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forSegmentAtIndex:1];
    [seg setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:0];//
    
    seg.momentary=NO;
    
    [self.view addSubview:seg];
    
    //[seg insertSegmentWithTitle:@"new" atIndex:2 animated:YES];  在UISegmentedControl当前数量的前提下插入一个新的标题按钮第一个参数设置按钮标题文字，第二个参数设置插入位置，s第三个参数设置是否z带动画效果  ，另外insertSegmentimage:atIndex:animated:方法用于s插入一个按钮图片
    //[seg removeSegmentAtindex:1 animated:YES];   可以把已有按钮移除一个
    //[seg setTitle:@"replace" forSegmentAtIndex:1];   重新设置一个按钮的标题  setTitle:forSegmentIndex:   方法重新设置一个按钮图片
    //[seg removeAllSegments];    移除所有按钮
    //[seg setWidth:130 forSegmentAtIndex:3];   设置按钮宽度与标题文字一致
    //seg.apportionsSegmentWidthsByContent=YES;    自动计算其中按钮需要的宽度
}


@end
