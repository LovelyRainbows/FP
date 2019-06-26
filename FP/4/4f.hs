--Программа, которая выводит на экран все алфавитно-цифровые последовательности,
--содержащиеся в указанном файле. Алфавитно-цифровой называется непрерывная
--последовательность цифр и букв латинского алфавита.

module Main where
import System.IO
import System.Directory
import Control.Monad
import Data.Char

main = do
    contents <- readFile "file1.txt"
    let z=head contents
    forM_ (contents) $ \ x -> do
        if (x `elem` ['0'..'9']++['a'..'z']++['A'..'Z']) then putChar $ x else putStrLn ""
                --if (x `elem` "") then putStrLn "" else return ()