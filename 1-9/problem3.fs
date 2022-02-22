let isPrime n =
    [ 2L .. (float >> sqrt >> int64) n]
    |> List.forall(fun x -> n % x <> 0L)

let evenlyDivisible n x = 
    n % x = 0L

let primeFactors n = 
    [ 2L ..  (float >> sqrt >> int64) n] 
    |> List.filter isPrime
    |> List.filter (evenlyDivisible n)

let maxPrimeFactor n = 
    primeFactors n |> List.max

printfn "%A" (maxPrimeFactor 600851475143L)
