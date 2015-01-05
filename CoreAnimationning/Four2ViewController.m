//
//  Four2ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Four2ViewController.h"

@interface Four2ViewController ()

@end

@implementation Four2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //shadowOpacity大于默认值0和1之间的浮点数,若为1.0将会显示一个有轻微模糊的黑色阴影稍微在图层之上,若要改动阴影的表现,可以使用CAlayer的另外三个属性:shadowColor,shadowOffset(CGSize值,控制阴影的位移)和shadowRadius(控制阴影的模糊度,当它的值是0是,阴影像边界线一样,值越来越大时,越来越模糊和自然)
    //masksToBounds会裁剪掉阴影,用一个额外的视图来解决,只把阴影用在最外层的视图上,内层视图进行裁剪
    
    //用shadowPath指定任意阴影开关,shadowPath是一个CGPathRef类型,一个指向CGPath的指针,CGPath是一个Core Graphics对象,用来指定任意的一个矢量图形,可以通过这个属性单独于图层形状之外指定阴影的形状
    self.layerView1.layer.shadowOpacity = 0.5f;
    self.layerView2.layer.shadowOpacity = 0.5f;
    
    CGMutablePathRef squarePath = CGPathCreateMutable();
    CGPathAddRect(squarePath, NULL, self.layerView1.bounds);
    self.layerView1.layer.shadowPath = squarePath;
    CGPathRelease(squarePath);
    
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddEllipseInRect(circlePath, NULL, self.layerView2.bounds);
    self.layerView2.layer.shadowPath = circlePath;
    CGPathRelease(circlePath);
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
