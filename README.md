### setup

```bash
brew install ghc
```

It installs 2 things:

1. `ghc`: (Glasgow Haskell Compiler)
2. `ghci`: REPL (Read-Eval-Print Loop) for Haskell

Just run `ghci` in the terminal to start the REPL.

To quit the REPL, type `:quit` or `:q`. (But I just do `ctrl + d`, haha)

### try out ghci


```haskell
-- this is a comment, no `;` at the end
print "Hello, World!"

-- declare var
greeting = "Hello, World!"
print greeting
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
