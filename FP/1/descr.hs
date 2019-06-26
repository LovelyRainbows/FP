import Data.List

f cu1 cu2 cu3 = do

    let a=[1,5,3] {-d=13-}
    let b=[2,6,2] {-d=20-}
    let c=[6,4,1] {-d=-8-}
    let custom=[cu1,cu2,cu3]

    let d1 = (a !! 1) ^ 2 - 4 * (a !! 0) * (a !! 2)
    let d2 = (b !! 1) ^ 2 - 4 * (b !! 0) * (b !! 2)
    let d3 = (c !! 1) ^ 2 - 4 * (c !! 0) * (c !! 2)
    let dc = (custom !! 1) ^ 2 - 4 * (custom !! 0) * (custom !! 2)

    putStr ("d1 = ")
    print d1
    putStr ("d2 = ")
    print d2
    putStr ("d3 = ")
    print d3
    putStr ("d custom = ")
    print dc



