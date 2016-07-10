## Description
It is to evaluate the value of an arithmetic expression in Reverse Polish Notation.
Valid operators are +, -, *, /. Each operand may be an integer or another expression. 

For example:
["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6


Sudo code:
```
For each element
if element is number
  push in stack
else if element is operator
  pop 2 elements and do calculation with the operator
  push the result in stack
else throw error
```

  
##test:
```
 if String is: (2.4+7.1)*3.1/3^2-(1.2^4.3+6^3)
 then postfix expression will be: 2.4 7.1 + 3.1 * 3 2 ^ / 1.2 4.3 ^ 6 3 ^ + -
 and evaluation result is: -214.91795550433343
```

