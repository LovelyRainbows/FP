--Описать функцию, аргументами которой являются два списка, а результатом список, 
--содержащий элементы второго списка, не принадлежащие первому списку.
--module Main where
 
import System.IO
import Control.Monad
import Text.Read


f line1 line2 = do
    forM_ (line2) $ \ (l2) -> do
        forM_ (line1) $ \ (l1) -> do
            when (l2 /= l1) && (l2 /= [x]) $ do
                let x = l2
                putStrLn l2