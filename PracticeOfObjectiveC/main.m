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
    
    // Declaration of Fundamental Variables
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
    
    
    
    
    
    // Declaration of Array
    NSMutableArray *firstArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", nil];
    NSLog(@"\n");
    NSLog(@"%lu", (unsigned long)[firstArray count]);
    NSLog(@"%@", [firstArray objectAtIndex:2]);
    // I had better store the data with NS type into NSArray, or some bugs would occurr.
    
    [firstArray addObject:@"four"];   /* Add more element in NSMutableArray, I could not do it in the normal NSArray. */
    NSLog(@"%lu", (unsigned long)[firstArray count]);
    NSLog(@"%@", [firstArray objectAtIndex:3]);
    [firstArray removeObject:@"four"];
    NSLog(@"%lu", (unsigned long)[firstArray count]);
    
    
    
    
    
    // Declaration of Dictionary
    NSMutableDictionary *firstDictionary = [NSMutableDictionary dictionary];
    NSNumber *firstValue = [NSNumber numberWithInt:1];
    NSNumber *secondValue = [NSNumber numberWithInt:2];
    NSNumber *thirdValue = [NSNumber numberWithInt:3];
    [firstDictionary setValue:firstValue forKey:@"first"];
    [firstDictionary setValue:secondValue forKey:@"second"];
    [firstDictionary setValue:thirdValue forKey:@"third"];
    NSLog(@"\n");
    NSLog(@"The number of elements in this dictionary is:%lu", [firstDictionary count]);
    NSLog(@"%@", [firstDictionary objectForKey:@"first"]);
    // I only could store the data with the type of NS in the NSdictionary.
    
    
    
    
    
    // Pack Fundemental Variables into NSobject
    NSNumber *firstPackedInteger = [NSNumber numberWithInteger:88];
    NSNumber *firstPackedFloat = [NSNumber numberWithFloat:3.14];
    NSNumber *firstPackedChar = [NSNumber numberWithChar:"A"];
    NSNumber *firstPackedBool = [NSNumber numberWithBool:true];
    NSArray *arrayWithDifferentData = [NSArray arrayWithObjects:firstPackedInteger, firstPackedFloat, firstPackedChar, firstPackedBool, nil];
    NSLog(@"%lu", [arrayWithDifferentData count]);
    NSLog(@"%@", [arrayWithDifferentData objectAtIndex:0]);
    NSLog(@"%@", [arrayWithDifferentData objectAtIndex:1]);
    NSLog(@"%@", [arrayWithDifferentData objectAtIndex:3]);
    
    NSLog(@"%@", [NSNumber numberWithInteger:([firstPackedInteger integerValue] + 12)]);
    NSLog(@"%@", [NSNumber numberWithFloat:([firstPackedFloat floatValue] + 10)]);
    // NSNumber could not be calculated directly. I need to use "typeValue" to extract it first.
    
    NSString *NSIntegerToNStringType = [NSString stringWithFormat:@"%ld", (long)[firstPackedInteger integerValue]];
    NSLog(@"The string type is: \"%@\"", NSIntegerToNStringType);   /* Convert NSInteger into NSString. */
    NSNumber *NSStringToNSIntegerType = [NSNumber numberWithInteger:[NSIntegerToNStringType intValue]];
    NSLog(@"The integer type is: %@", NSStringToNSIntegerType);     /* Convert NSString into NSInteger. */
    
    // NSString
    NSLog(@"%lu", (unsigned long)[firstString length]);
    NSLog(@"%c", [firstString characterAtIndex: 1]);   /* I could not use "%d" here. */
    // Which character should I type after "%"? => Refer to here: https://pydoing.blogspot.com/2012/08/objc-NSLog.html
    // How to transform different type of NSData? => Refer to here: http://www.cnblogs.com/csj007523/archive/2012/07/16/2593269.html
    NSLog(@"\n");
    
    
    
    
    
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
    
    
    
    
    
    // Class
    testominy *import = [[testominy alloc] init];
    [import setAValue:17 setBValue:24];
    
    [import instanceMethod];
    // If I want to define a function, I need to do it in the part of interface and implementation.
    // If I want to call a instance method, after I declared the function with the beginning of "-" in the part of interface and implementation, I need to instance the class first. Afterward, I could called it with instance.
    NSLog(@"Sum of %d and %d equal to %d", [import setFirstValue], [import setSecondValue], [import aggregation]);
    [testominy classMethod];
    // If I want to call a class method, after I declared the function with the beginning of "+" in the part of interface and implementation, I could called it with the class directly.
    
    
    
    
    
    // Automatic Reference Counting (ARC)
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    // The objects which were created below would be in this pool.
    
    tryReleasePool *anotherImport = [tryReleasePool new];
    // Initialize an object.
    anotherImport.babyInteger = [NSNumber numberWithInteger:2];
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





