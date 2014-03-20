//
//  NYBCarnivore.m
//  DEMO-WEEK-FIVE
//
//  Created by Christopher Ladd on 3/20/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYBCarnivore.h"

@implementation NYBCarnivore

- (void)goHunting {
    id food = nil;

    if (arc4random() % 50 == 0) {
        abort();
    }

    if (arc4random() % 2 == 0) {
        food = [self findFood];
        NSLog(@"found food: %@", food);
        [self eatFood:food];
    }
    else {
        NSLog(@"didn't find anything");
    }


}

@end
