//
//  Five2ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Five2ViewController.h"

@interface Five2ViewController ()

@end

@implementation Five2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CATransform3D矩阵变换
    //CATransform3DMakeRotation(CGFloat angle, CGFloat x, CGFloat y, CGFloat z)
    //CATransform3DMakeScale(CGFloat sx, CGFloat sy, CGFloat sz)
    //CATransform3DMakeTranslation(CGFloat tx, CGFloat ty, CGFloat tz)
    
    //绕Y轴旋转图层
    //rotate the layer 45 degrees along the Y axis
    CATransform3D transform = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
    self.layerView1.layer.transform = transform;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//实现一个斜切变换
CGAffineTransform CGAffineTransformMakeShear(CGFloat x, CGFloat y){
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform.c = -x;
    transform.b = y;
    return transform;
}

@end
