//
//  ReflectionView.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "ReflectionView.h"
#import <QuartzCore/QuartzCore.h>

@implementation ReflectionView

+ (Class)layerClass{
    return [CAReplicatorLayer class];
}

- (void)setUp{
    //configure replicator
    CAReplicatorLayer* layer = (CAReplicatorLayer*)self.layer;
    layer.instanceCount = 2;
    //move reflection instance below original and flip vertically
    CATransform3D transform = CATransform3DIdentity;
    CGFloat verticalOffset = self.bounds.size.height + 2;
    transform = CATransform3DTranslate(transform, 0, verticalOffset, 0);
    //书中的方法
    transform = CATransform3DScale(transform, 1, -1, 0);
    //下面的方法也是可以的
//    transform = CATransform3DRotate(transform, M_PI, 1, 0, 0);
    layer.instanceTransform = transform;
    //reduce alpha of reflection layer
    layer.instanceAlphaOffset = -0.6;
}

- (id)initWithFrame:(CGRect)frame{
    //this is called when view is created in code
    if ((self = [super initWithFrame:frame])) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib{
    //this is the called when view is created from a nib
    [self setUp];
}
@end
