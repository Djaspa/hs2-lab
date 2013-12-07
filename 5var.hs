import Lab2

main = do
putStrLn "Узнать, какие студенты посещают все три представленных предмета; "

mapM_ putStrLn $ map (\(pos,st)-> show pos ++ "). " ++ name st ++" " ++ surname st) 
	$ zip [1..] $ filter (\st-> not (foldr (\x -> \y -> x || y) False $ map (\e -> null $ filter(\(n, sn) -> (n == (name st)) && (sn == (surname st))) e) [french, discrete_mathematics, programming] )) students
