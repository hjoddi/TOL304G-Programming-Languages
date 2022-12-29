{-
Notkun: revSqr x
Fyrir:  x er listi [x1, x2, ..., xN] af tölum.
Gildi:  Listinn [(xN)^2, (x(N-1))^2, ..., (x1)^2]
-}
revSqr :: Num a => [a] -> [a]
revSqr x = 
    foldr (++) [] [x]


main :: IO ()
main = do
    print(revSqr [2, 4, 5, 6])
    print(revSqr [])