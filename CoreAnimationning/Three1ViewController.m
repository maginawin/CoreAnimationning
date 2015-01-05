//
//  Three1ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Three1ViewController.h"

@interface Three1ViewController ()



@end

@implementation Three1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.greenView.backgroundColor = [UIColor greenColor];
    self.redView.backgroundColor = [UIColor redColor];
    //layer的锚点anchorPoint像是把原图的center作为锚点,然后相对于图的左上角的位置,如锚原来是0.5,0.5,改为0,0则图向右下角移直到左上角在原center上
    //更改zPosition可以改变layer的前后顺序
    self.greenView.layer.zPosition = 1.0f;
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
