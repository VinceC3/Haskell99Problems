module Main where


main :: IO ()
main = do
  putStrLn "This is Haskell 99 Problems and the are my answers to problems 1 - 10"
  putStrLn "Problem 1: please write a list of numbers or letters with no spaces"
  userList  <- getLine
  let lastItem = itemTest userList
  putStrLn $ "here is the last number or letter " ++ [lastItem]
  
  putStrLn "Do you have another list of numbers? Y/N "
  response <- getLine
  if (response == "Y") || (response == "y")
      then main
      else do
        putStrLn "GoodBye!"
        return ()  


itemTest :: (Ord a) => [a] -> a
itemTest [] = error "list is empty"
itemTest [x] = x
itemTest (x:xs) = last xs