//
//  ViewController.m
//  UIPageControlTest
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
    self.view.backgroundColor = [UIColor blackColor];
    UIPageControl * page = [[UIPageControl alloc]initWithFrame:CGRectMake(20, 100, 280, 30)];
    page.currentPageIndicatorTintColor = [UIColor redColor];
    [page addTarget:self action:@selector(changeNum:) forControlEvents:UIControlEventValueChanged];
    page.numberOfPages = 8;
    [self.view addSubview:page];
}

-(void)changeNum:(UIPageControl *)page{
    NSLog(@"%lu",page.currentPage);
}

@end
