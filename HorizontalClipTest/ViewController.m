//
//  ViewController.m
//  HorizontalClipTest
//
//  Created by developer on 10/25/13.
//  Copyright (c) 2013 developer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    HorizontalClipView *newHClipView = [[[NSBundle mainBundle]loadNibNamed:@"HorizontalClipView" owner:nil options:nil]objectAtIndex:0];
    newHClipView.frame = CGRectMake(90, 771, 674, 188);
    
    self.horizontalClipView = newHClipView;
    self.horizontalClipView.parentViewController = self;
    
    [self.view addSubview:newHClipView];
    [newHClipView release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
