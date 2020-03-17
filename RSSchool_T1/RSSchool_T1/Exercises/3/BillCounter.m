#import "BillCounter.h"

@implementation BillCounter

// Complete the following function
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    NSMutableArray *totalBill = [NSMutableArray arrayWithArray:bill];
    
    [totalBill removeObjectAtIndex:index];
    
    int annaMoney = 0;
    
    for (int i = 0; i < [totalBill count]; i++) {
        annaMoney += [totalBill [i] intValue];
    }
    
    annaMoney /= 2;
    
    if (annaMoney == [sum intValue]) {
        return @"Bon Appetit";
    } else {
        return [NSString stringWithFormat:@"%d", [sum intValue] - annaMoney ];
    }
}

@end
