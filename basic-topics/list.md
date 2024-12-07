### homegenous

A list is a collection of elements of the **same** type.

```haskell
nums = [1, 2, 3]
chars = ['a', 'b', 'c']
bools = [True, False, True]
```

### common operations

```haskell
nums = [1, 2, 3]

-- get length
print (length nums)

-- get element by index
print (nums !! 1)

-- get first/last element
print (head nums)
print (last nums)
-- get all elements except the first/last one
print (tail nums)
print (init nums)

-- check if a list is empty
print (null nums) -- False

-- check if an element is in a list
print (elem 2 nums) -- True
print (nums `elem` 2) -- this is the infix func notation. only works for funcs with two args. more readable

-- concatenate two lists
morenums = [4, 5, 6]
allnums = nums ++ morenums

-- prepend an element to a list
-- this is a O(1) operation
-- unlike in some other languages, where it's O(n)
newnums = 0 : nums

-- take/drop n elements
print (take 2 nums)
print (drop 2 nums)
```

### naive question

Can i append/remove elements to/from a list?

Dude, Haskell is a **functional** programming language. You can't mutate the value of a variable once it's assigned.

Mutation is evil. It might be a sane question in a non-fp language, but not in Haskell.

You can, however, create a new list based on the old one.

```haskell
a = [1, 2, 3]
b = a ++ [4, 5]
print b
```

### string is a list of chars

```haskell
name = "Patrick"
chars = ['P', 'a', 't', 'r', 'i', 'c', 'k']
-- name is equivalent to chars
print (name == chars) -- True
lastname = "Ren"
-- the fact that string concat also uses ++ proves that string is a list
fullname = name ++ " " ++ lastname
print fullname
```
