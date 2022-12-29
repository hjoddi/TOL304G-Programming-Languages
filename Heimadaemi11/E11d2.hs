{-
Notkun: powerList i j
Fyrir:  i og j eru heiltölur.
Gildi:  Listi lista [x1, x2, ..., xN] sem inniheldur
        alla undirlista lista allra heiltalna k þ.a.
        i <= k <= j, í vaxandi röð. Ef i <= j þá er
        útkoman allir undirlistar listans
        [i, i+1, ..., j]. Ef i > j þá er útkoman
        [[]].
-}
powerList :: Integer -> Integer -> [[Integer]]
powerList i j=
    if i > j then [[]]
    else 
        let 
            pl = powerList (i+1) j
        in
            pl ++ map (i:) pl
main :: IO()
main = do
    print(powerList 1 3)
    print(powerList 3 1)