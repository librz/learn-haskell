### function definition

```haskell
lucky :: Int -> String
lucky 7 = "Lucky number seven!" -- value based pattern matching
lucky x = "Sorry, you're out of luck, pal!"
```

Although u can use `if-then-else` or `guards`  to achieve the same result in the above example, they are limited to condition checking. Pattern matching is more powerful because it can destructure data.

### destructuring list/tuple

```haskell
describeList :: [a] -> String
describeList [] = "empty list"
describeList [x] = "one-element list" -- destructure based pattern matching
describeList _ = "long list" -- `_` is a wildcard that matches anything
```

This feels like destructuring in JavaScript, only more powerful.

### case expression

`case-of` expr makes it easier and more readable to match against a value.

it generates an expression so that makes it very flexible.

```haskell
count :: Int -> String
count x = "You did it " ++ case x of
  1 -> "once"
  2 -> "twice"
  _ -> show x ++ " times" -- `show` converts a value to a string
```

### pattern matching in list comprehension

```haskell
addPairs :: [(Int, Int)] -> [Int]
addPairs xs = [a + b | (a, b) <- xs]
```

### pattern matching in where clause

```haskell
initials :: String -> String -> String
initials first last = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = first -- pattern match the first char
        (l:_) = last
```
