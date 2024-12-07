### intro

List comprehension is a concise way to generate lists in Haskell.

It feels like `filter` then `map` in JavaScript.

### syntax

```haskell
[ expression | generator, ..., generator, predicate, ..., predicate ]
```

### examples

```haskell
-- map only
print [x * 2 | x <- [1..5]] -- [2, 4, 6, 8, 10]

-- conditional map
print [if x < 3 then "small" else "big" | x <- [1..5]] -- ["small", "small", "big", "big", "big"]

-- filter then map
print [x * 2 | x <- [1..5], mod x 2 == 0] -- [4, 8]

-- multiple filters
- [x | x <- [1..10], mod x 2 == 0, mod x 4 /= 0] -- [2, 6, 10]

-- multiple generators (cartesian product)
print [ (x, y) | x <- [1, 2], y <- [3, 4] ] -- [(1, 3), (1, 4), (2, 3), (2, 4)]
```

### interesting examples

```haskell
-- calculate length of a list
length' xs = sum [1 | _ <- xs]
-- remove all non-uppercase characters from a string
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
print (removeNonUppercase "Haskell is Fun") -- "HF"
```
