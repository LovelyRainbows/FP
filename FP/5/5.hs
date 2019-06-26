{-# LANGUAGE FlexibleInstances #-} 

import Data.List
import System.IO
import Control.Monad
type Reply = [(Int,String)]
 
someReplies :: [Reply]
someReplies =[[(1, "very good"), (3, "bad"), (4, "normal")],
              [(2,"good"), (3,"bad"), (4,"good"), (5,"difficult")],
              [(4,"normal"), (5,"very difficult")]]
 
validReply :: Reply -> Bool
validReply x = chk $ map fst x
               where chk [] = True
                     chk (y:ys) | y `elem` ys = False
                                | otherwise   = chk ys
                                
questions :: [Reply] -> [Int]
questions r =  map head $ group $ sort $ concatMap (\ x -> map fst x) r
                
answers :: Int -> [Reply] -> [String]
answers k r =  map snd $ concatMap (\ x -> filter (\ (p,_) -> p==k) x) r
 
setof :: [Int] -> [Int]
setof [] = []
setof (x:xs) = x : (setof $ filter (/= x) xs)
 
summary rs = zip [1,2..] ss
             where na = sort $ setof $ map fst aa
                   aa = concatMap id rs
                   ss = map action $ map (\ n -> filter (\ (a,s) -> a==n) aa) na   
            
action cs = qsort $ map (\ x -> ((length x),(head x))) $ group $ sort $ map snd cs                   
             
                   
qsort :: [(Int,String)] -> [(Int,String)]                   
qsort [] = []
qsort (x:xs) = (qsort $ filter (\ (z,s) -> (z > fst x)) xs) ++ 
               [x] ++ 
               (qsort $ filter (\ (z,s) -> (z <= fst x)) xs)


summarize :: [Reply] -> IO ()
summarize z =  forM_ (summary z) $ \ (p) -> do 
                    putStr ("Question " ++ show (fst p) ++ ": ")
                    forM_ (snd p) $ \ (f) -> do
                        putStr (show (((fst f)*100) `div` (length (answers (fst p) z) )) ++ "% " ++ show (snd f) ++ " ")
                    putStrLn ""

{--zeroing :: [String] -> [String]
zeroing a = return ("")--}

main = do
    let z = ["Каково Ваше общее мнение об этом курсе?: ","Ваше мнение о лекциях?: ","Что Вы думаете о том, что занятия назначены на субботу?: ","Что Вы думаете о заданиях для лабораторных работ?: ","Насколько трудным был для Вас этот курс?: "]
    putStrLn "Введите количество анкетируемых: "
    n <- getLine 
    let g = read n :: Int
    sl <- forM [1..g] (\ x -> do
        putStrLn ""
        b <- forM (zip [1..5] z) (\(t,k) -> do
            putStrLn $ k
            a <- getLine
            --let a = if (a == "") then "0"
                --else a
            let e = (zip [t] [a])
            --let e = if (validReply(e) == True) then (zip [t] [a])
                --else []
            return (head e))
        return b)
    print $ sl
    summarize sl