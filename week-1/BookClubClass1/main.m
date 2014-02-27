//
//  main.m
//  BookClubClass1
//
//  Created by Christopher Ladd on 2/20/14.
//  Copyright (c) 2014 NYTimes. All rights reserved.
//

/*
 This is a comment, also.
*/

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
+ (int):(int)a :(int)b;
@end

@implementation Calculator

+ (int):(int)x :(int)y {
    return x + y;
}

@end



//##########

@interface Animal : NSObject


@end

@implementation Animal


@end


@interface Person : Animal

- (NSString *)name;

- (void)setName:(NSString *)aNameOrRandomVariableName;

@end


@implementation Person {
    NSString *_name;
}

- (NSString *)defaultName {
   return @"Person";
}


- (NSString *)name {
    if (_name) {
        return _name;
    }

    return [self defaultName];
}

- (void)setName:(NSString *)name {
    _name = name;
}

@end


@interface Greeter : Person

- (void)greetPerson:(Person *)person;

- (void)introducePerson:(Person *)person toPerson:(Person *)otherPerson;

- (void)introducePerson:(Person *)person toPerson:(Person *)otherPerson withAnecdote:(NSString *)anecdote;

@end

@implementation Greeter

- (NSString *)name {
    return @"Greeter Man.";
}

- (void)greetPerson:(Person *)person {
    NSLog(@"Sup. Greetings, %@", [person name]);
}

- (void)introducePerson:(Person *)person toPerson:(Person *)otherPerson {
    NSLog(@"Sup %@, I am your greeter. My name is %@. Do you know %@?", [person name], [self name], [otherPerson name]);
}




@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *grant = [[Person alloc] init];
        [grant setName:@"Grant"];

        Person *adam = [[Person alloc] init];
        [adam setName:@"Adam"];


        Greeter *greeter = [[Greeter alloc] init];

        [greeter greetPerson:grant];
        [greeter greetPerson:adam];

        [greeter introducePerson:grant toPerson:adam];

        int result = [Calculator :10 :14];

        NSLog(@"%d", result);


        NSStringFromSelector(@selector(introducePerson:toPerson:));

    }

    return 0;
}

