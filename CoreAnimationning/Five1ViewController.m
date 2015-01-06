
//
//  Five1ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Five1ViewController.h"

@interface Five1ViewController ()

@end

@implementation Five1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (void)viewWillAppear:(BOOL)animated{
    
    //CGAffineTransform变换
    //CGAffineTransformMakeRotation(CGFloat angle) 旋转
    //CGAffineTransformMakeScale(CGFloat sx, CGFloat sy) 缩放
    //CGAffineTransformMakeTranslate(CGFloat tx, CGFloat ty) 平移变换
    
    //使用affineTransform对图层做了45度顺时针旋转
    //rotate the layer 45 degrees
//    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
//    self.layerView1.layer.affineTransform = transform;
    
    //混合变换
    //先缩小50%,再旋转30度,最后向右移动200个像素
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform = CGAffineTransformScale(transform, 0.5, 0.5); //scale by 50%
    transform = CGAffineTransformRotate(transform, M_PI / 180.0 * 30.0); // rotate by 30 degrees
    transform = CGAffineTransformTranslate(transform, 200, 0); // translate by 200 points
    //apply transform to layer
    self.layerView1.layer.affineTransform = transform;
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
