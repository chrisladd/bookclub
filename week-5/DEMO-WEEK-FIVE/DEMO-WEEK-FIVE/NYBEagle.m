//
//  NYBEagle.m
//  DEMO-WEEK-FIVE
//
//  Created by Christopher Ladd on 3/20/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYBEagle.h"
#import "NYBFish.h"

@implementation NYBEagle

- (void)chewFood:(id)food {
    NSLog(@"Eagles don't chew. Simple pulling down guellet");
}

- (void)swallowFood:(id)food {
    if (arc4random() % 2 == 0) {
        if (arc4random() % 2 == 0) {
            NSLog(@"chose to feed children a %@", food);
            return;
        }
        else {
            NSLog(@"dropped %@ in the ocean", food);
            return;
        }
    }

    [super swallowFood:food];
}

- (id)findFood {
    // goes out, finds a fish... assume he's God and he can create a fish.
    NYBFish *fish = [[NYBFish alloc] init];

    return fish;
}

@end
