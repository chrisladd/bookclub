//
//  NYBAppDelegate.m
//  DEMO-WEEK-FIVE
//
//  Created by Christopher Ladd on 3/20/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYBAppDelegate.h"
#import "NYBEagle.h"

struct GrantCoolStruct {
    CGPoint origin;
    CGSize size;
};

@implementation NYBAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];

    CGRect rect = CGRectMake(0, 0, 0, 0);
    NSLog(@"%@", [NSValue valueWithCGRect:rect]);

    [self updateValueInRectPassedIn:rect];

    NSLog(@"%@", [NSValue valueWithCGRect:rect]);

    [self updateValueInRectPassedByReference:&rect];

    NSLog(@"%@", [NSValue valueWithCGRect:rect]);

    rect = [self valueByUpdatingRect:rect]; // normal, preferred way of doing things.

    NSLog(@"%@", [NSValue valueWithCGRect:rect]);


    NSMutableString *string = [NSMutableString stringWithFormat:@"Hello Grant"];

    NSLog(@"%@", string);

    [self updateValueOfString:string];

    NSLog(@"%@", string);

    NYBEagle *eagle = [[NYBEagle alloc] init];
    for (int i = 0; i < 1000; i++) {
        [eagle goHunting];
    }

    return YES;
}

- (void)updateValueOfString:(NSMutableString *)string {
    [string setString:@"changed string"];
}

- (void)updateValueInRectPassedIn:(CGRect)rect {
    rect.origin.x = 6;
    rect.origin.y = 10000;
}

- (void)updateValueInRectPassedByReference:(CGRect *)rect {
    CGRect updatableRect = *rect;

    updatableRect.origin.x = 6;
    updatableRect.origin.y = 10000;

    *rect = updatableRect;
}

- (CGRect)valueByUpdatingRect:(CGRect)rect {
    rect.origin.x = 22373;
    rect.origin.y = 28;

    return rect;
}

@end
