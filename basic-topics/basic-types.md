### basic types

Types in Haskell is written in pascal case.

- Int
- Integer: like `Int`, but can represent arbitrarily large numbers
- Float
- Double
- Bool: 2 values: `True` and `False`
- Char: single quotes

### collections

- List: elements must be of the same type
- Tuple: elements can be of different types

List is implemented as a linked list, so it's slow for random access.

### what about string?

Like C, String is just a list of characters. String are enclosed in double quotes.

### does Haskell have null?

In JavaScript, `null` is a type/value that represents nothing. In Haskell, `null` is a function that checks if a list is empty.

So `null` in Haskell is not a type, but a function.

```haskell
null [] -- True
null [1, 2, 3] -- False
```
