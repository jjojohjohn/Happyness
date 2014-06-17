//
//  ODDHappynessEntry.m
//  Happyness
//
//  Created by Matthew Chiang on 6/16/14.
//  Copyright (c) 2014 OddLook. All rights reserved.
//

#import "ODDHappynessEntry.h"

@implementation ODDHappynessEntry

- (instancetype)initWithHappyness:(ODDHappyness *)happyness 
                             note:(ODDNote *)note
                         dateTime:(NSString *)dateTime {
    self = [super init];
    if (self) {
        _happynessObject = happyness;
        _note = note;
        _dateAndTimeString = dateTime;
    }
    return self;
}

@end
