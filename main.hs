add :: Int -> Int -> Int
add x y = x + y

increment :: Int -> Int
increment x = add x 1

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

inBetween :: Int -> Int -> Int -> Bool
inBetween x y z = let lower = min x y
                      upper = max x y
                  in z >= lower && z <= upper

count :: Int -> String
count x = "You did it " ++ case x of
    1 -> "once"
    2 -> "twice"
    _ -> show x ++ " times" -- `show` converts a value to a string

main = do
  -- print (factorial 3)
  -- print $ increment $ add (increment 2) $ factorial 3
  -- -- using $ to avoid parentheses
  -- print $ sumList [1, 2, 3, 4, factorial $ factorial 3]
  -- print $ findMax [1, 2, 3, 4, 5]

  let name = let firstname = "Patrick"
             in let lastname = "Ren"
             in firstname ++ " " ++ lastname
  let age = 5
  print age
  print name
  print $ inBetween 1 3 2
  let sum = let x = 1
                y = 2
                z = 3
            in x + y + z
  print sum

  print $ count 4
