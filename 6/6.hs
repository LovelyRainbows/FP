f m = do
    if ((sum (take 4 m)) == (sum (take 4 (drop 4 m)))) then
        if ((sum (take 3 m)) == (sum (take 3 (drop 8 m)))) then
            if ((take 1 m)==(take 1(drop 11 m))) then
                    putStrLn "13"
                else
                    putStrLn "12"
            else
                if ((take 1 (drop 8 m))==(take 1 (drop 9 m))) then
                        putStrLn "11"
                    else if ((sum (take 3(drop 8 m)))<(sum (take 3 m))) then
                            if ((take 1 (drop 8 m)) < (take 1 (drop 9 m))) then
                                    putStrLn "9"
                                else
                                    putStrLn "10"
                            else 
                                if ((take 1 (drop 8 m)) < (take 1 (drop 9 m))) then 
                                        putStrLn "10"
                                    else
                                        putStrLn "9"
        else
            if ((sum ((take 2 m) ++ (take 1 (drop 4 m))))  == (sum ((take 1 (drop 2 m))++(take 1(drop 5 m))++ (take 1(drop 8 m))))) then
                if ((take 1(drop 6 m)) == (take 1 (drop 7 m))) then
                        putStrLn "4"
                    else
                        if ((sum (take 4 m))< (sum (take 4 (drop 4 m)))) then
                            if ((take 1(drop 6 m)) > (take 1 (drop 7 m))) then
                                    putStrLn "7"
                                else
                                    putStrLn "8"
                            else 
                                if ((take 1(drop 6 m)) > (take 1 (drop 7 m))) then
                                        putStrLn "8"
                                    else
                                        putStrLn "7"                        
            else 
                    if ((sum (take 4 m)) > (sum (take 4 (drop 4 m)))) then
                        if ((sum ((take 2 m) ++ (take 1 (drop 4 m))))  > (sum ((take 1 (drop 2 m))++(take 1(drop 5 m))++ (take 1(drop 8 m))))) then
                            if ((take 1 m) == (take 1(drop 1 m))) then
                                    putStrLn "6"
                                else 
                                    if (take 1 m)>(take 1 (drop 1 m)) then
                                            putStrLn "1"
                                        else 
                                            putStrLn "2"
                            else 
                                if ((take 1 (drop 2 m)) == (take 1 (drop 8 m))) then
                                        putStrLn "5"
                                    else 
                                        putStrLn "3"
                        else
                            if ((sum ((take 2 m) ++ (take 1 (drop 4 m))))  < (sum ((take 1 (drop 2 m))++(take 1(drop 5 m))++ (take 1(drop 8 m))))) then
                                    if ((take 1 m) == (take 1(drop 1 m))) then
                                            putStrLn "6"
                                        else 
                                            if (take 1 m)<(take 1 (drop 1 m)) then
                                                    putStrLn "1"
                                                else 
                                                    putStrLn "2"
                                else
                                        if ((take 1 (drop 2 m)) == (take 1 (drop 8 m))) then
                                                putStrLn "5"
                                            else 
                                                putStrLn "3"