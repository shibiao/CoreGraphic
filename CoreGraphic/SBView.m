//
//  SBView.m
//  CoreGraphic
//
//  Created by sycf_ios on 2017/12/4.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import "SBView.h"
@interface SBView()
@property (weak, nonatomic) IBOutlet UIButton *removeBtn;
@property (nonatomic, strong) NSMutableArray  *linesArr;

//@property (nonatomic, assign) CGContextRef  context;
@end
@implementation SBView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [UIColor redColor];
    }
    return self;
}
-(void)setColor:(SBColor)color{
    _color = color;
    switch (color) {
        case white:
            CGContextSetRGBStrokeColor(self.context, 1.0, 1.0, 1.0, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
        case black:
            CGContextSetRGBStrokeColor(self.context, 0, 0, 0, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
        case red:
            CGContextSetRGBStrokeColor(self.context, 1.0, 0, 0, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
        case yellow:
            CGContextBeginPath(self.context);
            CGContextSetRGBStrokeColor(self.context, 1.0, 1.0, 0.0, 1.0);
            CGContextStrokePath(self.context);
            
//            [self setNeedsDisplay];
            break;
        case blue:
            CGContextSetRGBStrokeColor(self.context, 0.0, 0.0, 1.0, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
        case gray:
            CGContextSetRGBStrokeColor(self.context, 0.56, 0.56, 0.57, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
        case orange:
            CGContextSetRGBStrokeColor(self.context, 0.99, 0.57, 0.15, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
        case green:
            CGContextSetRGBStrokeColor(self.context, 0.0, 1.0, 0.0, 1.0);
            CGContextStrokePath(self.context);
//            [self setNeedsDisplay];
            break;
    }
}
- (void)drawRect:(CGRect)rect {
    self.linesArr = [NSMutableArray array];
    // CG:表示这个类在CoreGraphics框架里  Ref:引用
    self.context = CGContextRetain(UIGraphicsGetCurrentContext());
    CGContextSaveGState(self.context);
    CGContextBeginPath(self.context);
    //添加路径
    CGContextAddPath(self.context, self.path);
    //设置宽度
    CGContextSetLineWidth(self.context, 5);
    //设置颜色
//    CGContextSetRGBStrokeColor(self.context, 1, 0, 0, 1);
//    self.color = black;
    
    //渲染图形上下文
    
    CGContextStrokePath(self.context);
    CGContextRestoreGState(self.context);
    
     NSLog(@"%s",__FUNCTION__);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    
    CGPoint point = [event.allTouches.anyObject locationInView:self];

    if (!self.path) {
        self.path = CGPathCreateMutable();
    }
    CGPathCreateMutableCopy(self.path);
    //    b. 创建图形起始点

//    NSLog(@"%@",NSStringFromCGPoint(point));
    CGPathMoveToPoint(self.path, NULL, point.x, point.y);

    [self setNeedsDisplay];
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint point = [event.allTouches.anyObject locationInView:self];
    //    c. 添加图形的终点
    CGPathAddLineToPoint(self.path, NULL, point.x, point.y);

    [self setNeedsDisplay];
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.isDrawed = YES;
    CGPoint point = [event.allTouches.anyObject locationInView:self];
    CGPathAddLineToPoint(self.path, NULL, point.x, point.y);
    
    [self setNeedsDisplay];

    
//    SBView *subView = [[SBView alloc]initWithFrame:self.bounds];
//    subView.backgroundColor = [UIColor clearColor];
//    [self addSubview:subView];

}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //    NSLog(@"%s",__FUNCTION__);
}

@end
