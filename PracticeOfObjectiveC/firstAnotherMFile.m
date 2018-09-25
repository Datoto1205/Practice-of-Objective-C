//
//  firstAnotherMFile.m
//  PracticeOfObjectiveC
//
//  Created by 李政恩 on 25/09/2018.
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








