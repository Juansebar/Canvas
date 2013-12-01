//
//  CSSlideLeft.m
//  Carshare
//
//  Created by Meng To on 29/11/13.
//  Copyright (c) 2013 Wusi. All rights reserved.
//

#import "CSSlideLeft.h"

@implementation CSSlideLeft

- (void)awakeFromNib {
    [super awakeFromNib];
    [[self class] setDuration:self.duration setDelay:self.delay view:self];
}

+ (void)setDuration:(NSTimeInterval)duration setDelay:(NSTimeInterval)delay view:(UIView *)view {
    // Start
    view.transform = CGAffineTransformMakeTranslation(300, 0);
    [UIView animateKeyframesWithDuration:duration delay:delay options:0 animations:^{
        // End
        view.transform = CGAffineTransformMakeTranslation(0, 0);
    } completion:^(BOOL finished) { }];
}

@end
