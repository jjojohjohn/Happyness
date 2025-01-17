//
//  ODDCustomReminderSwitchView.m
//  Happyness
//
//  Created by Matthew Chiang on 7/16/14.
//  Copyright (c) 2014 OddLook. All rights reserved.
//

#import "ODDCustomReminderSwitchView.h"
#import "ODDCustomColor.h"

@interface ODDCustomReminderSwitchView ()

@end

@implementation ODDCustomReminderSwitchView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (void)setup {
    self.layer.cornerRadius = 5.0f;
    self.backgroundColor = [ODDCustomColor customReminderOffColor];
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                           0,
                                                           self.frame.size.width,
                                                           self.frame.size.height)];
    self.label.text = @"OFF";
    self.label.font = [UIFont fontWithName:@"Nunito-Bold" size:24];
    self.label.adjustsFontSizeToFitWidth = YES;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.textColor = [UIColor lightGrayColor];
/*    self.slider = [[ODDCustomReminderSwitchSliderView alloc] initWithFrame:CGRectMake(0,
                                                              0, 
                                                              self.frame.size.width / 2 + 5,
                                                              self.frame.size.height)];
 */
    [self addSubview:self.label];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if ([self pointInside:point withEvent:event]) {
        return self;
    }
    return nil;
}

@end
