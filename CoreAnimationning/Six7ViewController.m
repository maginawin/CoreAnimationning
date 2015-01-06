//
//  Six7ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six7ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface Six7ViewController ()

@end

@implementation Six7ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //使用CAReplicatorLayer并应用一个负比例变换于一个复制图层,你就可以创建指定视图或整个视图层次内容的镜像图片,这样就创建了一个[反射]效果
    //开源代码 https://github.com/nicklockwood/ReflectionView
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
