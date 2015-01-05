//
//  Four1ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Four1ViewController.h"

@interface Four1ViewController ()

@end

@implementation Four1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CALayer中conrnerRadius的忏悔控制着图层角的曲率,它是一个浮点数,默认为0,为0的时候即是直角,但是可以把他设置成做任意值,曲率值只影响背影颜色而不影响背景图片或是子图层,如果把masksToBounds设置成YES的话,图层里的秘有东西都会被截取
    //set the corner radius on our layers
    self.layerView1.layer.cornerRadius = 20.0f;
    self.layerView2.layer.cornerRadius = 20.0f;
    //enable clipping on the second layer
    self.layerView2.layer.masksToBounds = YES;
    
    //CALayer另外两个非常有用的属性就是borderWidth和borderColor,共同定义了图层边的绘制样式,沿着图层的bounds绘制,同时也包含图层的角
    //add a border to our layers
    self.layerView1.layer.borderWidth = 5.0f;
    self.layerView2.layer.borderColor = [UIColor blueColor].CGColor;
    self.layerView2.layer.borderWidth = 15.0f;
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
