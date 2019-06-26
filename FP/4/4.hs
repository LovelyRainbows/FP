--Программа должна считывать с командной строки имена
--двух файлов и выводить на экран те строки этих файлов, которые
--отличаются друг от друга.
module Main where
 
    import System.IO
    import System.Environment (getArgs)
    import Control.Monad
     
    main = do
        text1 <- readFile "file1.txt"
        text2 <- readFile "file2.txt"
        let lines1 = lines text1
            lines2 = lines text2
        forM_ (zip lines1 lines2) $ \ (l1, l2) -> do
            when (l1 /= l2 ) $ do
                putStrLn l1
                putStrLn l2
    return 0