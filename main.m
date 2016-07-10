//
//  main.m
//  objc-practice
//
//  Created by DesenGuo on 2016-07-09.
//  Copyright © 2016 ideaweddinghome. All rights reserved.
//

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* rpnString=@"2.4 7.1 + 3.1 * 3 2 ^ / 1.2 4.3 ^ 6 3 ^ + -";
        
        NSLog(@"%g",[rpnString evaluateRPNString]);
    }
    return 0;
}
