### named function

syntax: `name parameter1 parameter2 ... = expression`

```haskell
add :: Int -> Int -> Int
add x y = x + y
```

You can use pattern matching in function definition:

```haskell
isZero :: Int -> Bool
isZero 0 = True
isZero _ = False
```

### anonymous(lamda) function

Syntax: `\parameter1 parameter2 ... -> expression`

```haskell
add = \x y -> x + y -- bind 'add' to an anonymous function
map (\x -> x * 2) [1, 2, 3, 4, 5] -- use an anonymous function as an argument
```

### partial application and currying

All functions in Haskell takes only *one* parameter.

```haskell
add :: Int -> Int -> Int
add x y = x + y

add 1 2 -- 3

add1 = add 1 -- partial application
add1 2 -- 3
```
