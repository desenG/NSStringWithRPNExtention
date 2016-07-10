//
//  NSMutableArray+Stack.h
//  objc-practice
//
//  Created by DesenGuo on 2016-07-10.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray(StackExtension)
- (void)push:(id)object;
- (id)pop;
- (NSArray *)popWithAmount: (int) amount;
@end
