### infix & prefix

In Haskell, functions can be infix or prefix. (Note that infix funciton must take two arguments)

Infix functions are written between their arguments, while prefix functions are written before their arguments.

```haskell
2 + 3 -- infix
div 7 3-- prefix
```

### built-in infix functions

- arithmetic: `+`, `-`, `*`, `/`, `^`
- comparison: `>`, `<`, `>=`, `<=`, `==`, `/=`
- logical: `&&`, `||`

For built-in infix functions, you can use them as prefix functions by wrapping them in parentheses.

```haskell
(+) 2 3 -- 5
(>) 2 3 -- False
(||) True False -- True
```

### build-in prefix functions

- `div`, `mod`, `elem`, `notElem`

```haskell
div 7 2 -- 3
mod 7 2 -- 1
elem 2 [1, 2, 3] -- True
notElem 4 [1, 2, 3] -- True
```

u can use them as infix functions by wrapping them in backticks.

```haskell
7 `div` 2 -- 3
7 `mod` 2 -- 1
2 `elem` [1, 2, 3] -- True
4 `notElem` [1, 2, 3] -- True
```

### custom functions

To define your own functions and use them as infix functions, wrap them in backticks.

```haskell
add x y = x + y

add 2 3 -- 5
2 `add` 3 -- 5
```
