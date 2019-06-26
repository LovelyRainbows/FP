module Main where

 import Data.List

 main = do

 let a=["DOG","(CAT)","FOX"]
 let b=["RET","GET","PUT","OUT"]
 let c=["MOV","ADD","(MUL DEV)"]
 let new_arr = (head a: (head b: (head c:[])))
 print new_arr