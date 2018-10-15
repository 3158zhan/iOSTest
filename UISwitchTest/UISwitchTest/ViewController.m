//
//  ViewController.m
//  UISwitchTest
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
    UISwitch * swi =[[UISwitch alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    swi.onTintColor = [UIColor greenColor];
    swi.tintColor = [UIColor redColor];
    swi.thumbTintColor = [UIColor orangeColor];
    [self.view addSubview:swi];
}
-(void) changeColor:(UISwitch *)swi{
    if(swi.isOn)  {
        self.view.backgroundColor = [UIColor redColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

@end
