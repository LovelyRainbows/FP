--Программа считывает с командной строки имя файла
--и выводит на экран наиболее часто встречающееся
--в нем слово.

module Main where
import System.IO
import System.Environment (getArgs)
import Control.Monad
import Data.List

main = do
    text1 <- readFile "file1.txt"
    let n = 8
    let k = 0
    let kmax = 0
    let lines1 = lines text1
    forM_ [1..n] $ \ l1 -> do
        putStrLn "1"
        forM_ [1..n] $ \ l2 -> do
            putStrLn "2"
            when (l1 == l2) $ do
                putStrLn "3"
                let k = k + 1
                let l1 = "0"
                --return ()
                    when ((kmax < k) == True) $ do
                        putStrLn "4"
                        let kmax = k
                        let wrd = l1
                        return ()
    --putStrLn wrd