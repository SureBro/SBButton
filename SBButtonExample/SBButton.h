//
//  SBButton.h
//  SBButtonExample
//
//  Created by Chalamphong Pandey on 8/25/2558 BE.
//  Copyright (c) 2558 Chalamphong Pandey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

IB_DESIGNABLE


@interface SBButton : UIButton

@property (nonatomic)IBInspectable BOOL outlineMode;
@property (nonatomic)IBInspectable BOOL shouldAnimate;

@property (nonatomic) IBInspectable UIColor *normalFillColor;
@property (nonatomic) IBInspectable UIColor *selectedFillColor;
@property (nonatomic) IBInspectable UIColor *highlightedFillColor;
@property (nonatomic) IBInspectable UIColor *disabledFillColor;

@property (nonatomic) IBInspectable float borderWidth;
@property (nonatomic) IBInspectable float cornerRadius;
@end
