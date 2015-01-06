//
//  Five3ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Five3ViewController.h"

@interface Five3ViewController ()

@end

@implementation Five3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CATransform3D的透视效果通过矩阵中的m34来控制,用于按比例缩放x和y的值来计算到底要离视角多远
    //m34的默认值是0,通过设置m34为 -1.0/d 来应用透视效果,d代表了想象中视角相机和屏幕之间的距离,以像素为单位
    //因为相机视角并不存在,所以可以根据屏幕上的显示效果自由决定它的放置的位置,通常500~1000就可以了
    
    //create a new transform
    CATransform3D transform = CATransform3DIdentity;
    //apply perspecive
    transform.m34 = - 1.0 / 500.0;
    //rotate by 45 degrees along the Y axis
    transform = CATransform3DRotate(transform, M_PI_4, 0, 1, 0);
    //apply to layer
    self.layerView1.layer.transform = transform;
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
