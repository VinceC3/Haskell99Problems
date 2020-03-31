module Main where

import Data.List (genericIndex)

main :: IO ()
main = do
  putStrLn "This is Haskell 99 Problems and the are my answers to problems 1 - 10"
  putStrLn "Problem 1: please write a list of numbers or letters with no spaces"
  userList <- getLine
  let lastItem = itemTest userList
  putStrLn $ "here is the last number or letter " ++ [lastItem]
  let nextToLast = secondLast userList
  putStrLn $ "here is the second to last number or letter " ++ [nextToLast]
  putStrLn "give me a nubmer to find a specific element in the list"
  element <- readLn :: IO Int
  let elemAt = userList `genericIndex` (element - 1)
  putStrLn $ " this the element " ++ [elemAt] ++ " at " ++ show element
  let listLength = length userList
  putStrLn $ "This list has " ++ show listLength ++ " elements"
  putStrLn "Do you have another list of numbers? Y/N "
  response <- getLine
  if (response == "Y") || (response == "y")
    then main
    else do
      putStrLn "GoodBye!"
      return ()




itemTest :: (Ord a) => [a] -> a
itemTest [] = error "List is empty"
itemTest [x] = x
itemTest (x:xs) = last xs

secondLast ::  (Ord a) => [a] -> a
secondLast [] = error "List is empty"  -- error if the list is empty
secondLast [x] = error "Not enough items in list"  -- error if there are not enough items in the list
secondLast [x , _ ] = x -- return x if xs is null
secondLast ( _ :xs)  = (secondLast xs) -- continue to run second to last


