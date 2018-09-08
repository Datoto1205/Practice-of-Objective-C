//
//  main.m
//  PracticeOfObjectiveC
//
//  Created by 李政恩 on 08/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface testominy: NSObject {
    int firstValueInInterface;
    int secondValueInInterface;
}

- (int) setAValue: (int) parameterOne setBValue: (int) parameterTwo;
- (int) setFirstValue;
- (int) setSecondValue;
- (int) aggregation;
@end

@implementation testominy
- (void)setAValue:(int)parameterOne setBValue:(int)parameterTwo {
    firstValueInInterface = parameterOne;
    secondValueInInterface = parameterTwo;
}

- (int)setFirstValue {
    return firstValueInInterface;
}

- (int)setSecondValue {
    return secondValueInInterface;
}

- (int)aggregation {
    return firstValueInInterface + secondValueInInterface;
}
@end










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
    
    return 0;
    
    // The tutorials I refer to: https://pydoing.blogspot.com/2012/07/objc-memory-management.html
}




