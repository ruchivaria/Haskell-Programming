---------------------------------------------------------------------------
Fall 2021 CIS 623
Activity 5
---------------------------------------------------------------------------

Lastname :  Varia
Firstname:  Ruchi Amish
Stud. num:  493

---------------------------------------------------------------------------

> import Prelude hiding (scanl)
> import Data.List hiding (inits, tails, scanl)

We will use the following function in our demonstrations:

> rmdups :: Eq a => [a] -> [a]
> rmdups []
>               = []
> rmdups (x:xs) =  x : filter (/= x) (rmdups xs)


-- 1. By using the higher order function map and recursion, define
      the higher order function inits.

      The function inits will take a list xs of type [a] as input, 
      return the list of initial segments of xs in ascending 
      (w.r.t. length) order 

Show the code for inits in the space below:

> inits  :: [a] -> [[a]]
> inits [] = [[]]
> inits (x:xs) = []: ( map (x:)) (inits xs)

-- 2. By using recursion, define the function tails

      The function tails will take a list xs of type [a] as input, 
      return the list of tail segments of xs in descending 
      (w.r.t. length) order 

Show the code for tails in the space below:

> tails  :: [a] -> [[a]]
> tails [] = [[]]
> tails (x:xs) = (x:xs) : tails xs



-- 3. By using recursion, define the function scanl

Show the code for scanl in the space below:

> scanl :: (b -> a -> b) -> b -> [a] -> [b]
> scanl f e [] = [e]
> scanl f e (x:xs) = e : scanl f ( f e x ) xs



-- 4. Experiments with inits, tails and scanl

Show test examples you have created for the three functions
and document the results in the space below:

inits [1,2,3,4,5]
[[],[1],[1,2],[1,2,3],[1,2,3,4],[1,2,3,4,5]]

tails [1,2,3,4,5]
[[1,2,3,4,5],[2,3,4,5],[3,4,5],[4,5],[5],[]]

scanl (+) 0 [1,2,3,4]
[0,1,3,6,10]



