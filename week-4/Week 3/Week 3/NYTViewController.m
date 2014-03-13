//
//  NYTViewController.m
//  Week 3
//
//  Created by Christopher Ladd on 3/13/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

#import "NYTViewController.h"
#import "NYTView.h"



@implementation NYTViewController

// self  - refers to the actual instance in which you exist at this moment
// super - refers to whatever the superclass of the instance is.

- (void)loadView {
    self.view = [[NYTView alloc] init];
}

- (void)makeViewYellow {
    // ALL IDENTICAL!
    [[self view] setBackgroundColor:[UIColor yellowColor]];
    [self view].backgroundColor = [UIColor yellowColor];
    self.view.backgroundColor = [UIColor yellowColor];
    UIView *view = [self view];
    UIColor *color = [UIColor yellowColor];
    [view setBackgroundColor:[UIColor yellowColor]];
    [view setBackgroundColor:color];
    view.backgroundColor = color;
    view.backgroundColor = [UIColor yellowColor];
}

- (void)makeViewPurple {
    UIView *view = [self view];
    UIColor *color = [UIColor purpleColor];

    [view setBackgroundColor:color];


    NSLog(@"%s %@", __PRETTY_FUNCTION__, view);
}

- (void)makeViewRed {
    // empty implementations are fine.
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    [self makeViewYellow];
//}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self makeViewPurple];
}

@end
