//
//  ViewController.m
//  头
//
//  Created by 楚晨晨 on 16/2/23.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    MyView *view = [[MyView alloc]initWithFrame:CGRectMake(170   , 180, 100  ,  100)];
    view.imageName = @"1.jpg";
    view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
