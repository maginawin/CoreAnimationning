//
//  Six2ViewController.m
//  CoreAnimationning
//
//  Created by maginawin on 15-1-6.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "Six2ViewController.h"

@interface Six2ViewController ()

@property (weak, nonatomic) IBOutlet UIView *labelView;

@end

@implementation Six2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //create a text layer
    CATextLayer* textLayer = [CATextLayer layer];
    textLayer.frame = self.labelView.bounds;
    [self.labelView.layer addSublayer:textLayer];
    
    //set text attributes
    textLayer.foregroundColor = [UIColor blackColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentJustified;
    textLayer.wrapped = YES;
    
    //choose a font
    UIFont* font = [UIFont systemFontOfSize:15];
    
    //set layer font
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
    
    //choose some text
    NSString* text = @"Lorem ipsum dolor sit amet, consectetur adipiscing \ edit. Quisque massa  arcu, eleifend vel varius in, facilisis pulvinar \ leo, Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc elementum, libero ut porttitor dictum, diam odio congue lacus, vel \ fringilla sapien diam at purus. etiam suscipit pretium nunc sit amet \ lobortis";
    //set layer text
    textLayer.string = text;
    //若不加上下面的将被像素化,因为contentsScale并不关心屏幕的拉伸因素而总是默认为1.0,如果想以Retina的质量来显示文字,得手动设置CATextLayer的contentsScale属性
    textLayer.contentsScale = [UIScreen mainScreen].scale;
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
