//
//  ODDCalendarCardCollectionViewCell.h
//  Happyness
//
//  Created by John Lee on 7/9/14.
//  Copyright (c) 2014 OddLook. All rights reserved.
//

#import "ODDCardCollectionViewCell.h"

@class ODDHappynessEntry;

@interface ODDCalendarCardCollectionViewCell : ODDCardCollectionViewCell

@property (nonatomic, strong) UITextView *noteLabel;
@property (nonatomic, strong) ODDHappynessEntry *currentEntry;

- (void)setHappynessEntry:(ODDHappynessEntry *)happynessEntry;

@end
