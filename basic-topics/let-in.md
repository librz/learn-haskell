### let

In Haskell, `let` is used to define variables in a local scope. It's similar to `let` in math.

```haskell
main = do
  -- if used alone, `let` creates a statement
  let x = 1
  print x
```

### let in

`let in` produces a value(assigned to a variable) in the `in` part. So `let in` is an expression.

Note the variables before `in` are only visible in the `in` part.

```haskell
-- when used with `in`, `let in` creates an expression
print (let count = 1 in count + 1)
print count -- error: not in scope


There are a few ways to declare multiple variables with `let in`.

```haskell
-- method a: nested `let in`
let x = 1 in (let y = 2 in x + y)
-- method a': no parentheses
let x = 1 in let y = 2 in x + y

-- method b: you can use `;` to separate them
let x = 1; y = 2 in x + y
-- method b': surround with {} to make it more readable
let { x = 1; y = 2 } in x + y


-- method c: identation instead of `;`
let x = 1
    y = 2
in x + y

inBetween :: Int -> Int -> Int -> Bool
inBetween x y z = let lower = min x y
                      upper = max x y
                  in z >= lower && z <= upper
```
