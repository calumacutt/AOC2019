massToTotalFuel :: Integer -> Integer
massToTotalFuel x
    | x <= 8 = 0
    | x >= 9 = massToFuel x + massToTotalFuel (massToFuel x)

massToFuel :: Integer -> Integer
massToFuel x = x `div` 3 - 2

main :: IO ()
main = do
    listOfStrings <- lines <$> readFile "input.txt"
    print(sum (map (massToTotalFuel . read) listOfStrings))
