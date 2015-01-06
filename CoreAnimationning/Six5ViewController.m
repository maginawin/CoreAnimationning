//
//  Six5ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six5ViewController.h"

@interface Six5ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation Six5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //我们可以用locations属性来调整空间,locations属性是一个浮点数值的数组(以NSNumber包装)这些浮点数定义了colors中每个不同颜色的位置,同样的,也是以单位坐标系进行标定,0.0代表着开始,1.0代表着结束
    //locations并不是强制要求的,但如果你给它赋值了就一定要确保locations数据大小与colors数组的大小一定要相同,否则将会得到一个空白的渐变
    //绘制一个对角线渐变,从红到黄再到绿,locations指定了0.0,0.25和0.5三个数值,这样这三个渐变就有点像挤在了左上角
    //create gradient layer and add it to our container view
    CAGradientLayer* gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:gradientLayer];
    //set gradient colors
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor yellowColor].CGColor, (__bridge id)[UIColor greenColor].CGColor];
    //set locations
    gradientLayer.locations = @[@0.0, @0.25, @0.5];
    //set gradient start and end points
    gradientLayer.startPoint = CGPointMake(0.5, 0);
    gradientLayer.endPoint = CGPointMake(0.5, 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
