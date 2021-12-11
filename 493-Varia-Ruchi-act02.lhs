---------------------------------------------------------------------------
Fall 2021 CIS 623
Activity 2
---------------------------------------------------------------------------

Lastname :  Varia
Firstname:  Ruchi 
Stud. num:  493

---------------------------------------------------------------------------

1. The reverse1 function

In the space provided below, write a version of the reverse function,

reverse1

using the function (++) as a main helper. Give a concise description
of the function together with the code.

-- Put your description here
 
 'reverse1' is a function that forms a new list from the original list 
 with elements in the reverse order.
 '++' is append operator that is used to append the first element to end of reversed list.

-- Put your code there

> reverse1 :: [a] -> [a]
> reverse1 [] =[]
> reverse1(x:xs)= reverse1 xs ++ [x]

---------------------------------------------------------------------------

2. the first1 function


In the space provided below, write a version of the fst function, 

first1

and include a short description for the function.

-- Put your description here

'first1' is a version of the fst function that accepts tuple as an input 
and returns the first item of the tuple

-- Put your code there

> first1 ::(a,b) -> a
> first1 (x,y) = x 

---------------------------------------------------------------------------

3. the move function

In the space provided below, write the move function as described by
the instructor. Include a short description for the function.

-- Put your description here

'move' function accepts two lists as its input and uses a stack approach to give us an output of two lists.
The function checks the condition if the second list is empty or not.
If it is empty, we stop the function execution,
if it is not empty, we pop the first element from the second list and push it into the first list. 


-- Put your code there

> move :: ([a], [a]) -> ([a], [a])
> move (xs, []) = (xs, [])
> move (xs, (y:ys)) = ((y:xs), ys)


---------------------------------------------------------------------------

4. the transfer function  

In the space provided below, write the transfer function as described by
the instructor. Include a short description for the function.

-- Put your description here 

'transfer' function accepts two lists as its input and returns two lists as the output.
The function checks the condition if the second list is empty or not.
If it is empty, we stop the function execution,
if it is not empty, we recursively perform the 'move' function stated above.

-- Put your code there

> transfer :: ([a],[a]) -> ([a],[a])
> transfer (xs, []) = (xs, [])
> transfer (xs,ys) = transfer (move(xs,ys))

---------------------------------------------------------------------------

5. the reverse2 function

In the space provided below, write the transfer function in point free 
style as described by the instructor. Include a short description for 
the function.


-- Put your description here

'reverse2' uses Haskel provided point free style by implementing recursion of transfer, move and first1 functions.
The function accepts two lists as input and returns two lists as the output.
The function checks the condition if the second list is empty or not.
If it is empty, we stop the function execution,
if it is not empty, we recursively perform the 'move' function and then the 'first' function to extract the first list.

-- Put your code there

> reverse2 :: [a] -> [a]
> reverse2 [] =[]
> reverse2 xs = first1(transfer([], xs))

---------------------------------------------------------------------------

