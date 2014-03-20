//
//  NYBAnimal.m
//  DEMO-WEEK-FIVE
//
//  Created by Christopher Ladd on 3/20/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYBAnimal.h"

@implementation NYBAnimal

- (id)findFood {
    return nil;
}

- (void)eatFood:(id)food {
    [self chewFood:food];
    [self swallowFood:food];
}

- (void)chewFood:(id)food {
    NSLog(@"chew food: %@", food);
}

- (void)swallowFood:(id)food {
    NSLog(@"swallow food: %@", food);
}

@end
