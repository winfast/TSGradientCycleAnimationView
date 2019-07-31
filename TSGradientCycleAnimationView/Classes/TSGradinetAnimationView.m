//
//  TSGradinetAnimationView.m
//  Pods-TSGradientCycleAnimationView_Example
//
//  Created by QinChuancheng on 2019/7/19.
//

#import "TSGradinetAnimationView.h"

#define TSColor(hexNumber)           [UIColor colorWithRed:(((float)((hexNumber & 0xFF0000) >> 16)) / 255.0) \
green:(((float)((hexNumber & 0xFF00) >> 8)) / 255.0) \
blue:(((float)(hexNumber & 0xFF)) / 255.0) alpha:1]

@interface TSGradinetAnimationView ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation TSGradinetAnimationView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        CAGradientLayer* gradinentlayer = [CAGradientLayer layer];
        gradinentlayer.colors = @[(__bridge id)TSColor(0x0083FF).CGColor,(__bridge id)TSColor(0x21F8FF).CGColor];
        gradinentlayer.locations = @[@0.0,@1.0];
        gradinentlayer.startPoint = CGPointMake(0, 1);
        gradinentlayer.endPoint = CGPointMake(0, 0);
        gradinentlayer.frame = self.bounds;
        [self.layer addSublayer:gradinentlayer];
        
//        CGRect frame = self.bounds;
//        CGFloat endAngle = 0 ; //角度从-M_PI_2 -> M_PI_2 * 3 顺时针转动
//        UIBezierPath *arcPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(frame.size.width*0.5, frame.size.height*0.5) radius:frame.size.width * 0.5 - 2.5 startAngle:-M_PI_2 endAngle:endAngle clockwise:YES];
        self.shapeLayer = [CAShapeLayer layer];
        self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
        self.shapeLayer.lineWidth =  5.0f;
        self.shapeLayer.lineCap = kCALineCapRound;
        self.shapeLayer.strokeColor = TSColor(0x5BCDC2).CGColor;
//        self.shapeLayer.path = arcPath.CGPath;
        self.shapeLayer.backgroundColor = [UIColor clearColor].CGColor;
        self.layer.mask = self.shapeLayer;
        //[self.layer addSublayer:self.shapeLayer];
        
        
//        UIBezierPath *path = [UIBezierPath bezierPath];
//        [path moveToPoint:CGPointMake(20,10)];
//        [path addLineToPoint:CGPointMake(20,100)];
//
//        self.shapeLayer = [CAShapeLayer layer];
//        self.shapeLayer.path = path.CGPath;
//        self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
//        self.shapeLayer.strokeColor = UIColor.redColor.CGColor;
//        self.shapeLayer.lineWidth = 10;
//        self.shapeLayer.lineCap = kCALineCapRound;
//        self.shapeLayer.lineJoin = kCALineJoinRound;
//
//        [self.layer addSublayer:self.shapeLayer];
        
    }
    return self;
}

- (void)createGrdinetWithAnimation:(BOOL)isAnimation
{
    
//    UIBezierPath *leftPath1 = [UIBezierPath bezierPath];
//    [leftPath1 moveToPoint:CGPointMake(20,50)];
//    [leftPath1 addLineToPoint:CGPointMake(20,100)];
//    self.shapeLayer.path = leftPath1.CGPath;
//    [self.shapeLayer addAnimation:[self pathAnimationWithDuration:1] forKey:nil];
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW,  1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^(void){
//        //左侧位移动画
//        UIBezierPath *leftPath2 = [UIBezierPath bezierPath];
//        [leftPath2 moveToPoint:CGPointMake(20,10)];
//        [leftPath2 addLineToPoint:CGPointMake(20,120)];
//        self.shapeLayer.path = leftPath2.CGPath;
//        [self.shapeLayer addAnimation:[self pathAnimationWithDuration:1] forKey:nil];
//
//    });
   
    //[self.layer addSublayer:shapeLayer];
    
    CGRect frame = self.bounds;
    CGFloat endAngle = M_PI_2 * 3 ; //角度从-M_PI_2 -> M_PI_2 * 3 顺时针转动
    UIBezierPath *arcPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(frame.size.width*0.5, frame.size.height*0.5) radius:frame.size.width * 0.5 - 2.5 startAngle:-M_PI_2 endAngle:endAngle clockwise:YES];
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.fillColor = [UIColor clearColor].CGColor;
//    shapeLayer.lineWidth =  5.0f;
//    shapeLayer.lineCap = kCALineCapRound;
//    shapeLayer.strokeColor = TSColor(0x5BCDC2).CGColor;
//    shapeLayer.path = arcPath.CGPath;
//    shapeLayer.backgroundColor = [UIColor clearColor].CGColor;
//    self.layer.mask = shapeLayer;

    self.shapeLayer.path = arcPath.CGPath;
//
//    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"path"];
//    //animation.fromValue = @(0.0);
//   // animation.toValue = arcPath;
//    self.shapeLayer.mask.autoreverses = NO;
//    animation.duration = 5;
//    [self.shapeLayer addAnimation:animation forKey:nil];
    //原型动画
    [self.shapeLayer addAnimation:[self pathAnimationWithDuration:2 fromValue:0 toValue:1.0] forKey:nil];

//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW,  1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^(void){
//        CGRect frame = self.bounds;
//        CGFloat endAngle = M_PI_2 * 3 ; //角度从-M_PI_2 -> M_PI_2 * 3 顺时针转动
//        UIBezierPath *arcPath1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(frame.size.width*0.5, frame.size.height*0.5) radius:frame.size.width * 0.5 - 2.5 startAngle:-M_PI_2 endAngle:endAngle clockwise:YES];
//        self.shapeLayer.path = arcPath1.CGPath;
//        [self.shapeLayer addAnimation:[self pathAnimationWithDuration:2 fromValue:0.5 toValue:1] forKey:nil];
//    });
    
    
    //绘制路径的动画
    CALayer* aniLayer = [CALayer layer];
    aniLayer.backgroundColor = [UIColor redColor].CGColor;
    aniLayer.position = CGPointMake(0, 0);
    aniLayer.bounds = CGRectMake(0, 0, 5, 5);
    aniLayer.cornerRadius = 2.5;
    [self.layer addSublayer:aniLayer];
    
    CAKeyframeAnimation* keyFrameAni = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyFrameAni.repeatCount = 1;
    keyFrameAni.path = arcPath.CGPath;
    keyFrameAni.duration = 2;
 //   keyFrameAni.beginTime = CACurrentMediaTime() + 1;
    keyFrameAni.fillMode = kCAFillModeForwards;
    keyFrameAni.removedOnCompletion = NO;
    [aniLayer addAnimation:keyFrameAni forKey:@"keyFrameAnimation"];
    
    
}

- (CABasicAnimation *)pathAnimationWithDuration:(CGFloat)duration fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue {
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.fromValue = @(fromValue);   //控制动画进度
    pathAnimation.toValue = @(toValue);
    pathAnimation.duration = duration;
    pathAnimation.fillMode = kCAFillModeForwards;
    pathAnimation.removedOnCompletion = NO;
    pathAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    return pathAnimation;
}



@end
