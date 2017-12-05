//
//  SBView.h
//  CoreGraphic
//
//  Created by sycf_ios on 2017/12/4.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger,SBColor){
    white,
    black,
    red,
    yellow,
    blue,
    gray,
    orange,
    green,
};
@interface SBView : UIView
@property (nonatomic, assign) CGContextRef  context;
@property (nonatomic, assign) CGMutablePathRef  path;
@property (nonatomic, assign) BOOL  isDrawed;
@property (nonatomic, assign) SBColor  color;
@end
