//
//  NYBAnimal.h
//  DEMO-WEEK-FIVE
//
//  Created by Christopher Ladd on 3/20/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NYBAnimal : NSObject
- (void)eatFood:(id)food;
- (void)chewFood:(id)food;
- (void)swallowFood:(id)food;
- (id)findFood;
@end
