//
//  NSMutableArray+Stack.m
//  objc-practice
//
//  Created by DesenGuo on 2016-07-10.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray(StackExtension)
- (void)push:(id)object {
    [self addObject:object];
}

- (id)pop {
    if ([self count] == 0) return nil;
    id lastObject = [self lastObject];
    [self removeLastObject];
    return lastObject;
}

- (NSArray *)popWithAmount: (int) amount{
    if ([self count] == 0) return nil;
    if([self count]<amount) return self;
    NSIndexSet * indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange( self.count - amount, amount)];
    NSArray * result=[self objectsAtIndexes: indexSet];
    [self removeObjectsAtIndexes:indexSet];
    return result;
}

@end
