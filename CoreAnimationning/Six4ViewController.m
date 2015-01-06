//
//  Six4ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six4ViewController.h"

@interface Six4ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation Six4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CAGradientLayer也有startPoint和endPoint属性,他们决定了渐变的方向,这两个参数是以单位坐标系进行定义,所以左上角坐标是0,0,右下角坐标是1,1

    //CAGradientLayer实现简单的两种颜色的对角线渐变
    //create gradient(梯度) layer and add it to our container view
    CAGradientLayer* gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:gradientLayer];
    
    //set gradient colors
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor blueColor].CGColor];
    
    //set gradient start and end points
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
