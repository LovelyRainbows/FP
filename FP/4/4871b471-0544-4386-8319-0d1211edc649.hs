--Программа считывает с командной строки имя файла
--и выводит на экран наиболее часто встречающееся
--в нем слово.

module Main where
import System.IO
import System.Environment (getArgs)
import Control.Monad

main :: IO ()
main = do
    text1 <- readFile "file1.txt"
    let n = 8
    let k = 0
    let kmax = 0
    --let text1 = "oh fuck fuck fuck fuck no no no"
    let lines1 = lines text1
    forM_ [1..n] $ \ l1 -> do
        forM_ [1..n] $ \ l2 -> do
            --when (l1 == l2) $ do 
                let k = k + 1
                if kmax <= k
                    then k
                    else kmax
                let wrd = l1
                putStrLn l1
    --putStrLn wrd
    return ()
