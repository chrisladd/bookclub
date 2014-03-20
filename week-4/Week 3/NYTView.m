//
//  NYTView.m
//  Week 3
//
//  Created by Christopher Ladd on 3/13/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYTView.h"
#import <QuartzCore/QuartzCore.h>

@interface NYTView ()
@property (nonatomic) UIView *animatableSquare;
@end

@implementation NYTView

- (void)setBackgroundColor:(UIColor *)backgroundColor {
//    [super setBackgroundColor:backgroundColor];
    [super setBackgroundColor:[UIColor whiteColor]];
}


- (UIView *)animatableSquare {
    if (!_animatableSquare) {
        CGFloat width = 80.0;
        _animatableSquare = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, width, width)];
        _animatableSquare.layer.cornerRadius = width * 0.5;
        _animatableSquare.backgroundColor = [UIColor redColor];

        [self addSubview:_animatableSquare];

        [UIView animateWithDuration:1.0
                              delay:0.0
                            options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                         animations:^{
                             _animatableSquare.transform = CGAffineTransformMakeScale(1.5, 1.5);
                         } completion:nil];

    }

    return _animatableSquare;
}

- (void)layoutSubviews {
    self.animatableSquare.center = self.center;
}

@end
