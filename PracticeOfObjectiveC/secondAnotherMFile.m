//
//  secondAnotherMFile.m
//  PracticeOfObjectiveC
//
//  Created by 李政恩 on 25/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tryReleasePool: NSObject
@property (weak, nonatomic) NSNumber* babyInteger;
@property (weak, nonatomic) NSString *babyString;
// I could use "@property" to declare variables in OC. In Swift, I only need to use "var" or "let".


-(void) printBabyInteger: (int) inputNumber;
-(void) printBabyString: (NSString*) inputString;

@end



@implementation tryReleasePool

@synthesize babyInteger;
@synthesize babyString;


- (void)printBabyInteger:(int) inputNumber {
    int previousInputNumber = inputNumber;
    inputNumber = inputNumber * (int)[babyInteger integerValue];
    NSLog(@"\nThe product of %d and %@ is: %d", previousInputNumber, babyInteger ,inputNumber);
}

- (void)printBabyString:(NSString *) inputString {
    
    inputString = [inputString stringByAppendingString: babyString];
    NSLog(@"%@", inputString);
}

@end
