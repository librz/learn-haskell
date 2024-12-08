### setup

```bash
brew install ghc
```

It comes with 2 programs:

1. `ghc`: (Glasgow Haskell Compiler)
2. `ghci`: REPL (Read-Eval-Print Loop) for Haskell

Just run `ghci` in the terminal to start the REPL.

To quit the REPL, type `:quit` or `:q`. (But I just do `ctrl + d`, haha)

To write multiple line code in the REPL, use `:{` and `:}`.

```haskell
:{
add :: Int -> Int -> Int
add x y = x + y
:}
```

Note: the offical haskell recommend using [GHCup](https://www.haskell.org/ghcup/) as installer, but I have trouble installing it on my Mac. So fuck it.

### try out ghci

```haskell
-- this is a comment, no `;` at the end
print "Hello, World!"
-- declare var
greeting = "Hello, World!"
print greeting
-- get user input
print "What's your name"
name <- getLine
print "Hello " ++ name
```

- operators

```haskell
True && False
False || True

1 == 2
1 /= 2 -- not equal

2 > 1
1 <= 2

2 - 1
2 + 1
2 * 3
5 / 2 -- 2.5
6 / 2 -- 3.0

mod 5 2
div 5 2 -- 2

2 ^ 3

ceiling 3.4
floor 3.4
round 3.4
round 3.5

max 2 4
min 2 4
```

- add

```haskell
-- func is just a var, no special identifier, man I like it!
add :: Int -> Int -> Int -- type signature, optional
add x y = x + y
add 1 2 -- call the function
```

- partial application

```haskell
increase = add 1
increase 2
```

### write/compile code in a file

convention: haskell file extension is `.hs`

create a file named `main.hs`:

```haskell
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

findMax :: [Int] -> Int
findMax [] = error "empty list"
findMax [x] = x
findMax (x:xs) = max x (findMax xs) -- max is a built-in function

main = do
  print (factorial 5)
  -- using $ to avoid parentheses
  print $ sumList [1, 2, 3, 4, 5]
  print $ findMax [1, 2, 3, 4, 5]

```

compile it:

```bash
ghc -o main main.hs
```

It'll generate 3 files:

1. `main`: executable
2. `main.hi`: intermediate file (like a header/declaration file?)
3. `main.o`: object file (for linking)

### read an intro book

In Haskell's [official website](https://www.haskell.org/documentation/), there's a list of books and tutorials:

This is the book I'm reading: [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/)

Learning from this book will be covered in `basic-topics` folder.
