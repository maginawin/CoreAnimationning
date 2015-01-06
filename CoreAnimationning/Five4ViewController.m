//
//  Five4ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Five4ViewController.h"

@interface Five4ViewController ()

@end

@implementation Five4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CALayer有一个属性叫做sublayerTransform,它也是CATransform3D类型,但和对一个图层的变换不同,它影响到所有的子图层,这意味着可以一次性对包含这些图层的容器做变换,于是所有的子图层都自动继承了这个变换方法
    //CALayer有一个叫做doubleSided的属性来控制图层的背面是否要被绘制,这是一个BOOL类型,默认为YES,若设置为NO,那么当图层正面从相机视角消失的时候,它将不被绘制
    
    
    //应用sublayerTransform
    //apply perspective(透视) transform to container
    CATransform3D perspective = CATransform3DIdentity;
    perspective.m34 = -1.0 / 500.0;
    self.view.layer.sublayerTransform = perspective;
    //rotate layerView1 by 45 degrees along the Y axis
    CATransform3D transform1 = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
    self.layerView1.layer.transform = transform1;
    //rotate layerView2 by 45 degrees along the Y axis
    CATransform3D transform2 = CATransform3DMakeRotation(- M_PI_4, 0, 1, 0);
    self.layerView2.layer.transform = transform2;
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
