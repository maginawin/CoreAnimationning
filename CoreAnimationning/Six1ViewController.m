//
//  Six1ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six1ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface Six1ViewController ()

@end

@implementation Six1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //使用CAShapeLayer有以下一些优点:
    //渲染加速, CAShapeLayer使用了硬件加速,绘制同一图形会比用Core Graphics快很多
    //高效使用内存, 一个CAShapeLayer不需要像普通CALayer一样创建一个寄宿图形,所有无论有多大,都不会占用太多的内存
    //不会被图层边界剪裁掉, 一个CAShapeLayer可以在边界之外绘制,你的图层路径不会像用Core Graphics的普通CALayer一样被剪裁掉
    //不会出现像素化 当你给CAShapeLayer做3D变换时,它不像一个有寄宿图的普通图层一样变得像素化
    
    //你可以控制一些属性如lineWidth,lineCap(线条线尾的样子)和lineJoin(线条之间结合的样子),只有一次机会,若不同颜色或风格,为每个形状准备图层
    //绘制一个火柴人
    //create path
    UIBezierPath* path = [[UIBezierPath alloc] init]; //bezier 贝塞尔曲线
    [path moveToPoint:CGPointMake(175, 100)];
    [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [path moveToPoint:CGPointMake(150, 125)];
    [path addLineToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(125, 225)];
    [path moveToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(175, 225)];
    [path moveToPoint:CGPointMake(100, 150)];
    [path addLineToPoint:CGPointMake(200, 150)];
    
    //create shapeLayer
    CAShapeLayer* shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 5;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineCapRound;
    shapeLayer.path = path.CGPath;
    //add it to our view
    [self.view.layer addSublayer:shapeLayer];
    
    //绘制一个有三个圆角一个直角的矩形
    CAShapeLayer* shapeLayer2 = [CAShapeLayer layer];
    shapeLayer2.strokeColor = [UIColor blueColor].CGColor;
    shapeLayer2.fillColor = [UIColor yellowColor].CGColor;
    shapeLayer2.lineWidth = 2;
    shapeLayer2.lineJoin = kCALineJoinRound;
    shapeLayer2.lineCap = kCALineCapRound;
    //define path parameters
    CGRect rect = CGRectMake(50, 250, 100, 100);
    CGSize radii = CGSizeMake(20, 20);
    UIRectCorner corners = UIRectCornerTopRight | UIRectCornerBottomRight | UIRectCornerBottomLeft;
    //create path
    UIBezierPath* path2 = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
    shapeLayer2.path = path2.CGPath;
    [self.view.layer addSublayer:shapeLayer2];
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
