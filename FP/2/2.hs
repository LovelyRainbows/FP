--Типовые переменные
head ["м","т","у","с","и"]
fst (5,7)

-- Класс Eq
15 == 4  
"a"=="a"
15/=5    
"a"/="a"
"да" == "нет"   
"да" /= "нет"

--Класс Ord
"ОТФ-1" < "ОТФ-2"
20 `compare` 20
10 `compare` 20
20 `compare` 15

--Класс Show
show 0.5 
show "Хаскель"

--Класс Read
read "19" + 31
read "4.1" - 4.1
read "46" :: Int
read "23" :: Float

--Класс Enum
['c'..'j']
[1..10] [1..-1]
succ 'k' 
succ 'z'

--Класс Bounded
minBound :: Int     
maxBound :: Int
maxBound :: (Bool, Int, Double)
maxBound :: (Bool, Int, Char)

--Класс Num
23::Int
15::Float
37::Double

--Класс Floating
sin 15   
cos 15
tan 53    
atan 27

--Класс Integral
fromIntegral (length [1,5]) + 3.2

--Функция replicate
replicate 8 5

--Функция take
take 2 []   
take 4 ["A","B","C","D","E"]

--Функция reverse
reverse [1..5]

--Функция repeat
repeat 15
take 8 (repeat 15)

--Функция zip
zip [1,2,3] ['a','b']
zip [1,2,3] ['a','b','c']

--Функция elem
elem "12" ["1","2","1", "7", "/"]
elem "12" ["8","12","1"]