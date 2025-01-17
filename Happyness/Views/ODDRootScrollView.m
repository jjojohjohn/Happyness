//
//  ODDRootScrollView.m
//  Happyness
//
//  Created by Yujun Cho on 7/5/14.
//  Copyright (c) 2014 OddLook. All rights reserved.
//

#import "ODDRootScrollView.h"

@implementation ODDRootScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Notification used to disable scrolling when user is interacting with Graphs
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self
                   selector:@selector(handleTouchesBegan)
                       name:@"disableScroll"
                     object:nil];
        [center addObserver:self
                   selector:@selector(handleTouchesCancelledOrEnded)
                       name:@"enableScroll"
                     object:nil];
    }
    return self;
}

- (void)handleTouchesBegan {
    self.scrollEnabled = NO;
}

- (void)handleTouchesCancelledOrEnded {
    self.scrollEnabled = YES;
}

@end
