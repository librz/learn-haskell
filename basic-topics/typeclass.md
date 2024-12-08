### type variable & typeclass

Typeclass is a way to define a set of functions that can be implemented by different types.

When we define a function without specifying its type signature, Haskell will infer the type signature for us(type inference).

```haskell
add x y = x + y

print (add 1 2) -- 3
print (add 1.1 2.2) -- 3.3
```

The type signature of `add` is `Num a => a -> a -> a`. You can print it in GHCi using `:t add`.

Let's break it down from left to right:

- `Num` is a typeclass. It's a constraint that `a` must comply with `Num`.
- `a` is a type variable. It can be any type that complies with `Num` such as `Int`, `Float`, `Double`, etc.
- `=>` is a separator between the typeclass constraint and the actual type signature.
- `a -> a -> a` is the actual type signature. It means `add` takes 2 arguments of type `a` and returns a value of type `a`.

If u know TypeScript, `Num a` looks like `T extends number`.

Why the infered typeclass is `Num`? Well, because `+`'s operand must be a number.

###
