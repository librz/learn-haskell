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
