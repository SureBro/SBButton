//
//  SBButton.m
//  SBButtonExample
//
//  Created by Chalamphong Pandey on 8/25/2558 BE.
//  Copyright (c) 2558 Chalamphong Pandey. All rights reserved.
//

#import "SBButton.h"

@implementation SBButton

//Set Properties in code
-(void)layoutSubviews{
    [super layoutSubviews];
    [self render];
}

//Update button in storyboard
-(void)prepareForInterfaceBuilder{
    [super prepareForInterfaceBuilder];
    [self render];
}

//Renders the Button
-(void)render{
    UIColor *backgroundColor;
    
    if (self.state == UIControlStateSelected) {
        backgroundColor = self.selectedFillColor;
    }else if (self.state == UIControlStateDisabled){
        backgroundColor = self.disabledFillColor;
    }else if (self.state == UIControlStateNormal ){
        backgroundColor = self.normalFillColor;
    }else if (self.state == UIControlStateHighlighted ){
        backgroundColor = self.highlightedFillColor;
        
    }
    
    if ([self outlineMode]) {
        self.layer.borderWidth  = self.borderWidth;
        self.layer.borderColor = backgroundColor.CGColor;
        self.backgroundColor = [UIColor clearColor];
    }else{
        self.backgroundColor = backgroundColor;
    }

    self.layer.cornerRadius = self.cornerRadius;
    self.layer.masksToBounds = YES;
}

//Interation Animations
-(void)setHighlighted:(BOOL)highlighted{
    [super setHighlighted:highlighted];
    
    if (self.shouldAnimate) {
        [UIView animateWithDuration:0.3f
                     animations:^{
                         if (highlighted) {
                             self.backgroundColor = self.highlightedFillColor;
                         }else{
                             self.backgroundColor = self.normalFillColor;
                         }
                     }];
    }
    
}
-(void)setSelected:(BOOL)selected{
    [super setSelected:selected];
    if (self.shouldAnimate) {
        [UIView animateWithDuration:0.3f
                     animations:^{
                         if (selected) {
                             self.backgroundColor = self.highlightedFillColor;
                         }else{
                             self.backgroundColor = self.normalFillColor;
                         }
                     }];
    }
}
-(void)setEnabled:(BOOL)enabled{
    [super setEnabled:enabled];
    if (self.shouldAnimate) {
        [UIView animateWithDuration:0.3f
                     animations:^{
                         if (! enabled) {
                             self.backgroundColor = self.disabledFillColor;
                         }else{
                             self.backgroundColor = self.normalFillColor;
                         }
                     }];
    }
}
@end
