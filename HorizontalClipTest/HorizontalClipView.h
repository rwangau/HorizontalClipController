//
//  HorizontalClipView.h
//  HorizontalClipTest
//
//  Created by developer on 10/25/13.
//  Copyright (c) 2013 developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalClipView : UIView

@property (nonatomic, retain) IBOutlet UIImageView *sideBarImageView;
@property (nonatomic) CGFloat panOriginOffset;

@property (nonatomic, assign) UIViewController *parentViewController;


@end
