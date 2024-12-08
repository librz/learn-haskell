### expression instead of statement

Unlike other languages where `if-else` is a statement, in Haskell, it's an expression.

```haskell
doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100
                      then x
                      else x * 2
```

This is much like the ternary operator in JavaScript.

### nesting

like ternary operator in JavaScript, `if-then-else` can be nested.

```haskell
describeNumber :: Int -> String
describeNumber x = if x < 0
                   then "negative"
                   else if x == 0
                        then "zero"
                        else "positive"
```

### guards

Nested `if-then-else` can be replaced by guards to make it more readable.

```haskell
describeNumber :: Int -> String
describeNumber x
  | x < 0 = "negative"
  | x == 0 = "zero"
  | otherwise = "positive"
```
