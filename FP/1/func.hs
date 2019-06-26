module Func where
    import Data.List

    func = do
    let a=["DOG","(CAT)","FOX"] !! 2
    let b=["RET","GET","PUT","OUT"] !! 3
    let c=["MOV","ADD","(MUL DEV)"] !! 2
    let new_arr = a:(b:(c:[]))
    print new_arr