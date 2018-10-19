//
//  ViewController.m
//  UIPickerViewTest
//
//  Created by 詹相银 on 2018/10/19.
//  Copyright © 2018年 詹相银. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIPickerView * picker = [[UIPickerView alloc] initWithFrame:CGRectMake(20, 100, 280, 150)];
    picker.delegate = self;
    picker.dataSource = self;
    [self.view addSubview:picker];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    //该方法返回一个NSInteger类型的整数，UIPicker的分区数---用于设置选择列表的列数。
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 10;    //用以设置l每个分区的行数，参数component画用于判断具体的分区。
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{    //方法返回每一行数据，row，component分别用以区分列和行。
    return [NSString stringWithFormat:@"%lu分区%lu数据",component,row];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 44;    //设置具体f行的行高
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForeComponent:(NSInteger)component{
    return 140;   //设置分区的宽度，就是列的宽度
}
@end
