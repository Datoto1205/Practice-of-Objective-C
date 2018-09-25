//
//  secondAnotherMFile.m
//  PracticeOfObjectiveC
//
//  Created by 李政恩 on 25/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tryReleasePool: NSObject
@property int babyInteger;
@property NSString *babyString;


-(void) printBabyInteger: (int) inputNumber;
-(void) printBabyString: (NSString*) inputString;

@end



@implementation tryReleasePool

@synthesize babyInteger;
@synthesize babyString;


- (void)printBabyInteger:(int) inputNumber {
    int previousInputNumber = inputNumber;
    inputNumber = inputNumber * babyInteger;
    NSLog(@"\nThe product of %d and %d is: %d", previousInputNumber, babyInteger ,inputNumber);
}

- (void)printBabyString:(NSString *) inputString {
    
    inputString = [inputString stringByAppendingString: babyString];
    NSLog(inputString);
}

@end
