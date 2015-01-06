//
//  Six3ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six3ViewController.h"

@interface Six3ViewController ()

@end

@implementation Six3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CALayer*)faceWithTransform:(CATransform3D)transform{
    //create cube(立方) face layer
    CALayer* face = [CALayer layer];
    face.frame = CGRectMake(-50, -50, 100, 100);
    
    //apply a random color
    CGFloat red = (rand() / (double)INT_MAX);
    CGFloat green = (rand() / (double)INT_MAX);
    CGFloat blue = (rand() / (double)INT_MAX);
    face.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0].CGColor;
    
    //apply the transform and return
    face.transform = transform;
    return face;
}

- (CALayer*)cubeWithTransform:(CATransform3D)transform{
    //create cube layer
    CATransformLayer* cube = [CATransformLayer layer];
    
    //add cube face 1
    CATransform3D ct = CATransform3DMakeTranslation(0, 0, 50);
    [cube addSublayer:[self faceWithTransform:ct]];
    
    //add dube face 2
    ct = CATransform3DMakeTranslation(50, 0, 0);
    [cube addSublayer:[self faceWithTransform:ct]];
    
    //...太长请参考Github
    
    return cube;
}

@end
