#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    if ([sadArray  isEqual: @[]]) {
        
        NSLog (@"Sad array is empty!");
        return @[];
    }
    
    NSMutableArray *resultArray = [NSMutableArray arrayWithObject: [sadArray firstObject]];
    
    for (int i = 1; i < sadArray.count - 1; i++) {
        
        if ([sadArray[i] intValue] <= [sadArray[i - 1] intValue] + [sadArray[i + 1] intValue])
        {
            [resultArray addObject:sadArray[i]];
        }
    }
    [resultArray addObject: [sadArray lastObject]];
    
    if ([sadArray count] != [resultArray count]) {
        resultArray = [NSMutableArray arrayWithArray:[self convertToHappy: resultArray]];
    }
    
    return resultArray;
}

@end
