//
//  NSString+Type.m
//
//  Created by DesenGuo on 2016-02-23.
//

#import <Foundation/Foundation.h>
#import "NSString+Type.h"
@implementation NSString (Type)

-(BOOL)isNumeric
{
    NSScanner *scanner = [NSScanner scannerWithString:self];
    BOOL isNumeric = [scanner scanDouble:NULL] && [scanner isAtEnd];
    return isNumeric;
}

-(BOOL)isArithmeticOperator
{
    NSString * operators = @"^*/-+";
    NSCharacterSet * operatorsSet = [NSCharacterSet characterSetWithCharactersInString: operators];
    return self.length==1 && [operatorsSet characterIsMember:[self characterAtIndex:0]];
}
@end