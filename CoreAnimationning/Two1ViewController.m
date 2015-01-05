//
//  Two1ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Two1ViewController.h"

@interface Two1ViewController ()

@end

@implementation Two1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    // Do any additional setup after loading the view.
    UIImage* image = [UIImage imageNamed:@"body"];
    //add it directly to our view's layer
    _layerView.layer.contents = (__bridge id)image.CGImage; //通过__bridge关键字转换类型为id
//    _layerView.layer.contentsGravity = kCAGravityResizeAspect; //在图层中等比例拉伸以适应图层的边界,等同于UIViewContentModeScaleAspectFit
    //contentScale定义了寄宿图的像素尺寸和视图的大小比例,默认情况下它是一个值为1.0的浮点数
    _layerView.layer.contentsGravity = kCAGravityCenter;
    //set the contentsScale to match image
//    self.layerView.layer.contentsScale = image.scale;
    self.layerView.layer.contentsScale = [UIScreen mainScreen].scale;
    //maskToBounds 设为Yes只显示layer内的内容
    self.layerView.layer.masksToBounds = YES;
    //contentsRect 在图层边框里显示寄宿图的一个子域,使用相对坐标,在0到1之间,是一个相对值(像素和点就是绝对值),默认的contentsRect是{0,0,1,1}
    //contentsCenter实际是一个CGRect,定义了一个固定的边框和一个在图层上可以拉伸,默认情况下contentsCenter是{0,0,1,1}
    //Custome Drawing,可以直接用Core Graphics直接绘制,通过继承UIView并实现-drawRect:方法来自定主绘制  
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{

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
