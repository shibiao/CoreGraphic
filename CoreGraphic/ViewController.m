//
//  ViewController.m
//  CoreGraphic
//
//  Created by sycf_ios on 2017/12/4.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import "ViewController.h"

#import "SBView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet SBView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.drawView.color = yellow;
}
- (IBAction)removeView:(id)sender {
    
//    NSLog(@"%lu",(unsigned long)self.drawView.subviews.count);
//   SBView *tmpView;
//    tmpView = self.drawView;
//    while (tmpView.subviews.count>0) {
//        for (SBView *subView in tmpView.subviews) {
//            if (subView.subviews.count==0) {
//                if (subView.isDrawed) {
//                    [subView removeFromSuperview];
//                    return;
//                }else {
//                    [subView removeFromSuperview];
//                    [self removeView:nil];
//                }
//            }else {
//                tmpView = subView;
//            }
//        }
//    }
//    if (self.drawView.subviews.count==0) {
//        [self.drawView removeFromSuperview];
//    }
    
//    [tmpView removeFromSuperview];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [self.textField becomeFirstResponder];
    
//    UITextPosition *start = [self.textField positionFromPosition:[self.textField beginningOfDocument]
//                                                 offset:1];
//    UITextPosition *end = [self.textField positionFromPosition:start
//                                               offset:0];
//    [self.textField setSelectedTextRange:[self.textField textRangeFromPosition:start toPosition:end]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
