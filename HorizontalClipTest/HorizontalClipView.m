//
//  HorizontalClipView.m
//  HorizontalClipTest
//
//  Created by developer on 10/25/13.
//  Copyright (c) 2013 developer. All rights reserved.
//

#import "HorizontalClipView.h"

#import <QuartzCore/QuartzCore.h>

@implementation HorizontalClipView

@synthesize sideBarImageView;
@synthesize panOriginOffset;
@synthesize parentViewController;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSLog(@"initWithFrame !!!!!!!");
    }
    return self;
}

- (void) awakeFromNib{
    [self setupSideBar];
    [self setupGestureRecognizer];
}

- (void)setupGestureRecognizer{
    NSLog(@"setup Gesture Recognizer !!!");
    // pan gesture
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(didPerformPanGesture:)];
    
    UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(didPerformLongPressGesture:)];
    
    
    [longPressGesture setMinimumPressDuration:0.2];
    
    [self.sideBarImageView addGestureRecognizer:panGesture];
    [self.sideBarImageView addGestureRecognizer:longPressGesture];
    
    [panGesture release];
    [longPressGesture release];
    
    // long press gesture
    
    // self.sideBarImageView
}

- (void)didPerformPanGesture:(UIPanGestureRecognizer *)recognizer{
    CGPoint location = [recognizer locationInView:self.parentViewController.view];
    NSLog(@"PanGesture -> Location ->%@",NSStringFromCGPoint(location));
    
    CGPoint translation = [recognizer locationInView:self];
    NSLog(@"PanGesture -> Translation ->%@",NSStringFromCGPoint(translation));
    
    
    if(recognizer.state == UIGestureRecognizerStateBegan){
        self.panOriginOffset = [recognizer locationInView:self].x;
        NSLog(@"panOriginOffset ->%f",self.panOriginOffset);
    }
    else if(recognizer.state == UIGestureRecognizerStateChanged){
        
    }
    else if(recognizer.state == UIGestureRecognizerStateEnded){
        
    }
}

- (void)didPerformLongPressGesture:(UILongPressGestureRecognizer *)recognizer {
    NSLog(@"long Press Gesture !!!");
}

- (void)setupSideBar{
    self.sideBarImageView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.sideBarImageView.layer.shadowOpacity = YES;
    self.sideBarImageView.layer.shadowOffset = CGSizeMake(4, 4);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
