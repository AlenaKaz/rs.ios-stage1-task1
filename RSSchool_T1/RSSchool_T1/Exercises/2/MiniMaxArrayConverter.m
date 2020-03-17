#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    NSMutableArray *workArray = [NSMutableArray arrayWithArray: array];
  
    NSNumber *maxNumber = workArray[0];
    NSNumber *minNumber = workArray[0];
    
    NSInteger total = [workArray[0] intValue];
        
    for (int i = 1; i < [workArray count]; i++) {
        
        total += [workArray[i] intValue];

        if ([minNumber intValue] > [workArray[i] intValue]) {
            minNumber = workArray[i];
        }
        if ([maxNumber intValue] < [workArray[i] intValue]) {
            maxNumber = workArray[i];
        }
    }
    
    NSInteger minTotalAmount = total - [maxNumber intValue];
    NSInteger maxTotalAmount = total - [minNumber intValue];
    return @[@(minTotalAmount), @(maxTotalAmount)];
    }
    
    
@end
