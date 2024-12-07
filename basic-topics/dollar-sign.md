### function application

In Haskell, `$` is called the `function application operator` because it applies the function to the argument.

It is also used to avoid parentheses in function composition.

For example, instead of writing `print (factorial 3)`, you can write `print $ factorial 3`.

### function composition

> `f $ g $ h x` is equivalent to `f (g (h x))`. `$` operator is **right-associative**, you should read it from right to left.

Let's say we want compose `print`, `add` and `factorial`:

```haskell
add :: Int -> Int -> Int
add x y = x + y

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
  -- instead of print (add 1 (factorial 3))
  print $ add 1 $ factorial 3
```

### not all parentheses can be replaced by `$`

```haskell
add :: Int -> Int -> Int
add x y = x + y

increase = add 1

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
  -- this is wrong. The second $ doesn't make sense
  print $ add $ increase 2 $ factorial 3
  -- this is correct.
  print $ add (increase 2) $ factorial 3
```
