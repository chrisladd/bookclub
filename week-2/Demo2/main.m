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
        // float, CGFloat
        // int, NSInteger
        // long, long long, unsigned, signed
        
        // id.
        
        
        // +-*/, (), %
        
        // int i = (int)f;
        
        // +=, -=, *=, /=
        
        
        
        
#pragma mark - Control Statements
        
        // for
        // <, >, ==, <=, >=
        
        
        
        // scanf
        
        // introduce NSArray. introduce fast enumeration
        // nested loops. (for, for)
        // while loops.
        
        int i = 0;
        do {
            i++;
        } while (i < 10);
        
        
        while (YES) {
            i++;
            
            if (i < 10) {
                break;
            }
        }
        
        // print out all odd numbers up to 100
        while (YES) {
            i++;
            
            if (i % 2 == 0) {
                continue;
            }
            
            NSLog(@"%d", i);
            
            if (i >= 100) {
                break;
            }
        }
        
        
        // if
        // else
        // else if
        
        
        if (i == 2) {
            
        }
        else if (i == 6) {
            
        }
        else {
            
        }
        
        
        // switch
        
        switch (i) {
            case 2:
                NSLog(@"it's two");
                break;
            case 6:
                NSLog(@"it's four");
            case 8:
                NSLog(@"it's eight! Or six!");
                break;
            default:
                NSLog(@"it's not any!");
                break;
        }
        
        
        
        // && ||
        
        if (i == 6 || i == 8) {
            NSLog(@"it's eight! or six!");
        }
        
        if (i > 10 && i < 20) {
            
        }
        
        if (i > 10) {
            if (i < 20) {
                NSLog(@"");
            }
        }
        
        
        // BOOL
        
        BOOL aBool = YES;
        BOOL isBig = i > 100;
        
        // ternary
        BOOL isTernaryBig = i > 100 ? YES : NO;
        
        
        
#pragma mark - More on Classes
        // separate .h, .m
        //        @property
        // multiple arguments
        // argument names
        // static (yikes!)
        
        static int GlobalInt = 0;
        
        // inside a function, scope is different.
        
        // self. 
        
    
    }
    return 0;
}

