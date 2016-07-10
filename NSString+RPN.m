//
//  NSString+RPN.m
//  objc-practice
//
//  Created by DesenGuo on 2016-07-10.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//

#import "NSString+RPN.h"

@implementation NSString(RPN)
-(double)evaluateRPNString
{
    NSArray * postfixComponents = [self componentsSeparatedByString:@" "];

    NSMutableArray * stack = [NSMutableArray array];
    for (NSInteger compIdx=0; compIdx < postfixComponents.count; compIdx++)
    {
        @autoreleasepool {
            
            NSString * charStr = postfixComponents[compIdx];
            
            if (charStr.isNumeric){
                [stack push: charStr];
            } else if (charStr.isArithmeticOperator) {
                NSArray * operands;
                if (stack.count >= 2){
                    operands = [stack popWithAmount:2];
                } else {
                    continue;
                }
                double result = [self applyOperator:charStr toOperands:operands];
                [stack addObject: [NSString stringWithFormat:@"%f", result]];
            }
        }
    }
    double result = [[stack firstObject] doubleValue];
    return result;
}

-(double)applyOperator:(NSString *)operator toOperands:(NSArray *)operands
{
    void(^calculationBlock)(NSString * operand, NSUInteger idx, BOOL *stop) ;
    __block double result = 0;
    
    if ([operator isEqualToString:@"^"]){
        calculationBlock = ^(NSString * operand, NSUInteger idx, BOOL *stop) {
            if (idx == 0){
                result = operand.doubleValue;
            } else {
                result = pow(result, operand.doubleValue);;
            }
        };
    }
    
    if ([operator isEqualToString:@"/"]){
        calculationBlock = ^(NSString * operand, NSUInteger idx, BOOL *stop) {
            if (idx == 0){
                result = operand.doubleValue;
            } else {
                result /= operand.doubleValue;
            }
        };
    }
    if ([operator isEqualToString:@"-"]){
        calculationBlock = ^(NSString * operand, NSUInteger idx, BOOL *stop) {
            if (idx == 0){
                result = operand.doubleValue;
            } else {
                result -= operand.doubleValue;
            }
        };
    }
    if ([operator isEqualToString:@"*"]){
        calculationBlock = ^(NSString * operand, NSUInteger idx, BOOL *stop) {
            if (idx == 0){
                result = operand.doubleValue;
            } else {
                result *= operand.doubleValue;
            }
        };
    }
    if ([operator isEqualToString:@"+"]){
        calculationBlock = ^(NSString * operand, NSUInteger idx, BOOL *stop) {
            result += operand.doubleValue;
        };
    }
    
    [operands enumerateObjectsUsingBlock: calculationBlock];
    return result;
}
@end
