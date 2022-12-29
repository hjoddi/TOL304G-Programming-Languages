{-
Notkun: listAll i n f
Fyrir:  i og n eru gildi af týpu a sem hægt er að raða og telja með, þ.e. 
        sem hægt er að raða í röð þannig að jafnt
        sé á milli allra ni og ni+1.
        f er fall sem fær sem inntak eitt gildi af týpu a og skilar einu 
        gildi af týpu a.
Gildi:  Listinn [f(i), f(i+1), ..., f(n)] af týpu [a]
-}
listAll :: (Ord a, Enum a) => a -> a -> (a -> a) -> [a]
listAll i n f =
    if i > n then
        []
    else
        map f [i..n]

main :: IO ()
main = do
    print(listAll 1 5 (^2))
    print(listAll 5 1 (^2))
    print(listAll 1 0 (\x -> x))