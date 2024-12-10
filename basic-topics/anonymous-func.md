An anonymouse function is just function without a name. It is also called *lambda* function.

Syntax: `\parameter1 parameter2 ... -> expression`

```haskell
add x y = x + y -- normal function
add = \x y -> x + y -- bind 'add' to an anonymous function
map (\x -> x * 2) [1, 2, 3, 4, 5] -- use an anonymous function as an argument
```
