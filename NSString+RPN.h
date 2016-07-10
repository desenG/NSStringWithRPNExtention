//
//  NSString+RPN.h
//  objc-practice
//
//  Created by DesenGuo on 2016-07-10.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//
//Evaluate Reverse Polish Notation

//Evaluate the value of an arithmetic expression in Reverse Polish Notation. Valid operators are +, -, *, /. Each operand may be an integer or another expression. For example:
//
//["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
//["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6

//Sudo code:
//For each element
//  if element is number
//      push in stack
//  else if element is operator
//      pop 2 elements and do calculation with the operator
//      push the result in stack
//  else throw error
#import <Foundation/Foundation.h>

@interface NSString(RPN)
/**
 test:
 if infix expression is: (2.4+7.1)*3.1/3^2-(1.2^4.3+6^3)
 then postfix expression will be: 2.4 7.1 + 3.1 * 3 2 ^ / 1.2 4.3 ^ 6 3 ^ + -
 and evaluation result is: -214.91795550433343
 
 note:
 there is no inspections for any notation correctness for initial strings
 user is responsible for the correctness
 **/

-(double)evaluatePostfixNotationString;
@end
