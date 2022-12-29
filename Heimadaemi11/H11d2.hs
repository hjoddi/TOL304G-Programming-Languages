    {-
    Notkun: prodSum x
    Fyrir:  x er listi lista af tölum.
    Gildi:  Margfeldið af summum gilda innri listanna.
    -}
prodSum :: Num a => [[a]] -> a
prodSum [] = 1
prodSum (x:xs) =
    summa x * prodSum xs

{-
Notkun: summa x
Fyrir:  x er listi af tölum.
Gildi:  Summa gilda listans.
-}
summa :: Num a => [a] -> a
summa [] = 0
summa (x:xs) = 
    x + summa xs

main :: IO ()
main = do
    print(summa [1, 2, 3])
    print(prodSum [[1, 2, 5], [1, 2, 5]])