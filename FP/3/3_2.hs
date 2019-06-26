--Описать функцию, аргументами которой являются два списка, а результатом список, 
--содержащий элементы второго списка, не принадлежащие первому списку.
import System.IO
import Control.Monad
import Text.Read

f line1 line2 = do
    forM (line2) $ \ (l2) -> do
		when ((l2 `elem` line1) == False) $ do
			putStrLn ("Answer is: " ++ l2)