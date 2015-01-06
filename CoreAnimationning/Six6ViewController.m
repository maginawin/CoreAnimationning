//
//  Six6ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six6ViewController.h"

@interface Six6ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation Six6ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CAReplicatorLayer的目的是为了高效生成许多相似的图层,它会绘制一个或多个图层的子图层,并在每个复制体上应用不同的变换
    //instanceCount指定图层需要重复多少次 instanceTransform指定了一个CATransform3D 3D变换
    //变换是逐步增加的,每个实例都是相对于前一实例布局
    
    //create a replicator layer and add it to container view
    CAReplicatorLayer* replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:replicatorLayer];
    //configure the replicator
    replicatorLayer.instanceCount = 10;
    //apply a transform for each instance
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 0, 100, 0);
    transform = CATransform3DRotate(transform, M_PI / 5, 0, 0, 1);
    transform = CATransform3DTranslate(transform, 0, -100, 0);
    replicatorLayer.instanceTransform = transform;
    //apply a color shift for each instance
    replicatorLayer.instanceBlueOffset = -0.1;
    replicatorLayer.instanceGreenOffset = -0.1;
    //create a sublayer and place it inside the replicator
    CALayer* layer = [CALayer layer];
    layer.frame = CGRectMake(50.0f, 100.0f, 100.0f, 100.0f);
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    [replicatorLayer addSublayer:layer];
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
