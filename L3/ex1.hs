-- deklaracja wez dwie listy i zwroc liczbe
scalarproduct :: Num a => [a] -> [a] -> a
-- p <- zip a b ==> p staje sie wszystkimi parami jakie mozna zrobic z list a b
-- fst p ==> bierze 1st z pary
-- snd p ==> bierze 2nd z pary
-- wiec sumujemy po wszystkich iloczynach par z obu list
scalarproduct a b = sum [(fst p) * (snd p) | p <- zip a b]

-- ladujemy :load ex1.hs i mozemy uzywac: np scalarproduct [1,2] [3,4]
