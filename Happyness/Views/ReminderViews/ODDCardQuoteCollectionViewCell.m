//
//  ODDCardQuoteViewCell.m
//  Happyness
//
//  Created by Matthew Chiang on 7/15/14.
//  Copyright (c) 2014 OddLook. All rights reserved.
//

#import "ODDCardQuoteCollectionViewCell.h"
#import "ODDCustomColor.h"

@interface ODDCardQuoteCollectionViewCell ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic) CGSize shadowOffset;

@end

@implementation ODDCardQuoteCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _imageView = [[UIImageView alloc] init];
        self.backgroundView = _imageView;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        CGFloat onePixel = 2.0f / [UIScreen mainScreen].scale;
        static CGSize shadowOffset;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            shadowOffset = CGSizeMake(0.0f, onePixel);
        });
        self.shadowOffset = shadowOffset;

        [self setQuoteLabel];
    }
    return self;
}

- (void)setCardValueAndQuoteTextShadow:(NSInteger)value {
    NSString *cardImage = [NSString stringWithFormat:@"oddLook_card_%ld", (long)value];
    UIImage *card = [UIImage imageNamed:cardImage];
    self.imageView.image = card;

    self.label.shadowColor = [[ODDCustomColor customColorDictionary]
                              objectForKey:
                              [NSString stringWithFormat:@"oddLook_color_dark_%ld", (long) value]];
}

- (void)setQuoteLabel {
    CGRect frame = CGRectMake(7, 0, self.imageView.frame.size.width - 20, self.imageView.frame.size.height);
    self.label = [[UILabel alloc] initWithFrame:frame];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.numberOfLines = 0;
    self.label.lineBreakMode = NSLineBreakByWordWrapping;
    if (IS_IPHONE_5) {
        self.label.font = [UIFont fontWithName:@"Nunito-Bold" size:11.0];
    } else {
        self.label.font = [UIFont fontWithName:@"Nunito-Bold" size:10.0];
    }
    self.label.textColor = [UIColor whiteColor];
    self.label.shadowOffset = self.shadowOffset;
    [self addSubview:self.label];
}

- (void)setQuoteText:(NSString *)text {
    self.label.text = text;
}

@end
