let infiniteMultiples n =  Seq.initInfinite(fun index -> (index+1) * n)
let numberIsDivisibleByAll n list =
    list |> 
    List.forall(fun x -> n%x = 0)

// list contains integers for which the smallest number needs to divide without any remainder.
let smallestDivisibleWithoutRemainder (list:int list) =
    let baseMultiple = list |> List.last
    baseMultiple
    |> infiniteMultiples // The number we are looking for is at least a multiple of the largest number in the list of dividers.  
    |> Seq.takeWhile(fun multiple -> (numberIsDivisibleByAll multiple list) = false)
    |> Seq.last
    |> (+) baseMultiple


printfn "%A" (smallestDivisibleWithoutRemainder [1 .. 20])
