//
//  One1ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "One1ViewController.h"
#import <QuartzCore/QuartzCore.h> //使用CoreAnimation要添加的库

@interface One1ViewController ()

@end

@implementation One1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testView.backgroundColor = [UIColor redColor];
    //create sublayer
    self.blueLayer = [CALayer layer];
    self.blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    self.blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    //add it to our view
    [self.testView.layer addSublayer:self.blueLayer];
    //使用containsPoint判断被点击的图层
}
// //使用containsPoint判断被点击的图层
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    //get touch position relative to main view
//    CGPoint point = [[touches anyObject] locationInView:self.view];
//    //convert point to the white layer's coordinates
//    point = [self.testView.layer convertPoint:point fromLayer:self.view.layer];
//    //get layer using containsPoint
//    if ([self.testView.layer containsPoint:point]) {
//        //convert point to blueLayer's coordinates
//        point = [self.blueLayer convertPoint:point fromLayer:self.testView.layer];
//        if ([self.blueLayer containsPoint:point]) {
//            [[[UIAlertView alloc]initWithTitle:@"Inside Blue Layer" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil]show];
//        }else{
//            [[[UIAlertView alloc]initWithTitle:@"Inside Red Layer" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil]show];
//        }
//    }
//}

//使用hitTest判断被点击的图层 -hitTest:方法接受一个CGPoint参数,返回图层本身,或者包含这个坐标点的叶子节点图层
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint point = [[touches anyObject] locationInView:self.view];
    //get touched layer
    CALayer* layer = [self.testView.layer hitTest:point];
    //get layer using hitTest
    if (layer == self.blueLayer) {
        [[[UIAlertView alloc]initWithTitle:@"Inside Blue Layer" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil]show];
    }else if(layer == self.testView.layer){
        [[[UIAlertView alloc]initWithTitle:@"Inside Red Layer" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil]show];
    }
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
