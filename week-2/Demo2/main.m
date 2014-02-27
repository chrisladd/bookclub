//
//  main.m
//  Demo2
//
//  Created by Christopher Ladd on 2/27/14.
//  Copyright (c) 2014 Christopher Ladd. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
#pragma mark - Numbers

        int i = 0;
        i = i + 5;

        NSLog(@"The value of i is %d. You could also do this: %i", i, i);

        float f = 0.2;
        double d = 0.2;

        NSLog(@"Print a float: %f. and a double: %f", f, d);

        NSInteger integer = 0;
        CGFloat floatThing = 0;

        NSLog(@"integers are just integers! %ld, %f", (long)integer, floatThing);

        NSUInteger unsigendInt = -1;

        NSLog(@"integer: %lu", unsigendInt);

        NSString *string = [NSString stringWithFormat:@"I am a string with a float: %.2f", floatThing];

        NSLog(@"%@", string);

        i = i + 1;
        i++;
        i += 1;


        i--;
        i -= 1;
        i = i - 1;

        i = i * 5;
        i *= 5;

        i = i / 5;
        i /= 5;


        // mod
        i = 48;
        int remainder = i % 5;
        NSLog(@"remainder: %d", remainder);



        
#pragma mark - Control Statements


        for (int i = 0; i < 10; i++) {
            NSLog(@"I am in a loop: %d", i);
        }

        i = 0;
        while (i < 10) {
            NSLog(@"WHILE I am in a loop: %d", i);
            i++;
        }


        i = 0;
        do {
            NSLog(@"DO WHILE I am in a loop %d", i);
            i++;
        } while (i < 10);


        i = 0;
        while (YES) {
            NSLog(@"DO WHILE I am in a loop %d", i);

            i++;
            if (i >= 10) {
                break;
            }
        }


        // for objects

        NSArray *anArrayOfPeopleNames = @[@"Shirwah", @"Adam", @"Grant", @"Agnes"];

        NSArray *array = [[NSArray alloc] initWithObjects:@"some", @"objects", nil];

        NSLog(@"%@", array);

        NSArray *anotherWay = [NSArray arrayWithObjects:@"other", @"objects", nil];

        NSLog(@"another array: %@", anotherWay);

        for (int i = 0; i < [anArrayOfPeopleNames count]; i++) {
            NSString *name = [anArrayOfPeopleNames objectAtIndex:i];

            NSLog(@"name: %@", name);
        }

        for (NSString *name in anArrayOfPeopleNames) {
            NSLog(@"fastEnumerationName: %@", name);
        }


        // HOW DO YOU KNOW WHAT'S IN THE ARRAY?
        // id signifies an object of an unknown type.
        NSArray *arrayOfStringsAndNumbers = @[@"A string",
                                              @(4),
                                              [NSNumber numberWithInteger:7],
                                              [NSString stringWithFormat:@"another string"]];


        NSInteger runningTotalOfArray = 0;
        for (id anObject in arrayOfStringsAndNumbers) {
            if ([anObject isKindOfClass:[NSString class]]) {
                // it's a string
                NSString *string = (NSString *)anObject;

                NSLog(@"enumate a string: %@ (%ld)", string, [string length]);
//                NSLog(@"this should crash: %ld", [string count]);
            }
            else if ([anObject isKindOfClass:[NSNumber class]]) {
                // it's a number
                runningTotalOfArray += [(NSNumber *)anObject integerValue];
            }
        }

        NSLog(@"Total Value: %ld", runningTotalOfArray);


#pragma mark Casting
        NSString *aCastableString = @"a string";
//        NSUInteger length = [aCastableString length];
//
//        NSUInteger count = [(NSArray *)aCastableString count];
//
//        NSLog(@"%ld, %ld", length, count);

        NSString *desc = [aCastableString description];

        NSString *desc2 = [(NSArray *)aCastableString description];

        NSLog(@"%@, %@", desc, desc2);



#pragma mark - Misusing methods

        NSArray *myArray = @[@"yet", @"another", @"array"];
        NSArray *anotherArray = @[@"more", @"things"];

        NSLog(@"%@", myArray);

        NSArray *combinedArray = [myArray arrayByAddingObjectsFromArray:anotherArray];

        NSLog(@"%@", combinedArray);


        // the wrong way
        NSString *notAnArray = @"notAnArray";
        NSArray *crashableArray = [myArray arrayByAddingObjectsFromArray:(NSArray *)notAnArray];

        NSLog(@"%@", crashableArray);

    }
    return 0;
}

