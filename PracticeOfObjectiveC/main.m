//
//  main.m
//  PracticeOfObjectiveC
//
//  Created by 李政恩 on 08/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "firstAnotherMFile.m"
#import "secondAnotherMFile.m"
// Make sure that only one file could be compiled at the same time. Check the navigator bar in the left -> This project -> Targets -> Build Phases -> Compile Sources





int main() {
    
    // Hello World
    printf("Hello World\n");
    
    // Declaration
    int firstInteger = 1;
    char firstCharacter[4] = {'W', 'X', 'Y', 'Z'};
    double firstDouble = 1.0;
    BOOL firstBooling = true;
    NSString *firstString = @"Hi";
    NSString *secondString = @", Ni Hao";
    firstString = [firstString stringByAppendingString: secondString];
    
    NSLog(@"%@", firstString);
    NSLog(@"%d", firstInteger);
    NSLog(@"%lf", firstDouble);
    //printf() function is a typical function in c, but NSLog() function is created from foundation of Objective-C.
    
    // For-loop
    NSLog(@"\n");
    for (int i = 0; i < 4; i++) {
        NSLog(@"%c", firstCharacter[i]);
    }
    
    // If & Switch & while
    if (firstInteger < 2) {
        NSLog(@"firstInteger is smaller than 2.");
    } else {
        NSLog(@"firstInteger is bigger than 2.");
    }
    
    switch (firstInteger) {
        case 1:
            NSLog(@"firstInteger is 1.");
            break;
        case 2:
            NSLog(@"firstInteger is 2.");
            
        default:
            NSLog(@"firstInteger is unknown.");
            break;
    }
    
    while (firstBooling == true) {
        NSLog(@"%d", firstInteger);
        firstBooling = false;
    }
    
    // NSString
    NSLog(@"%lu", (unsigned long)[firstString length]);
    NSLog(@"%c", [firstString characterAtIndex: 1]);   /* I could not use "%d" here. */
    // Which character should I type after "%"? => Refer to here: https://pydoing.blogspot.com/2012/08/objc-NSLog.html
    
    // Class
    testominy *import = [[testominy alloc] init];
    [import setAValue:17 setBValue:24];
    
    NSLog(@"Sum of %d and %d equal to %d", [import setFirstValue], [import setSecondValue], [import aggregation]);
    
    
    
    // Automatic Reference Counting (ARC)
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    // The objects which were created below would be in this pool.
    
    tryReleasePool *anotherImport = [tryReleasePool new];
    // Initialize an object.
    anotherImport.babyInteger = 2;
    anotherImport.babyString = @", Yiha!";
    [anotherImport printBabyInteger: 5];
    [anotherImport printBabyString:@"China"];
    
    NSLog(@"Initial ARC is: %lu", [anotherImport retainCount]);
    [anotherImport retain];
    // "Retain" could increase the value of ARC.
    NSLog(@"After retain for one time, the ARC is: %lu", [anotherImport retainCount]);
    // "RetainCount" coulr return the value of ARC.
    
    [anotherImport release];
    // "Release" could decrease the value of ARC.
    NSLog(@"After release for one time, the ARC is: %lu", [anotherImport retainCount]);
    [anotherImport release]; /* Dealloc */
    NSLog(@"\n");
    
    [pool release];
    // Destroy the pool.
    //NSLog(@"%@", anotherImport.babyInteger);     /* Run this code would error because the variable which was in the pool was destroyed. */
    
    
    
    
    
    
    return 0;
    
    // The tutorials I refer to: https://pydoing.blogspot.com/2012/07/objc-memory-management.html
}




