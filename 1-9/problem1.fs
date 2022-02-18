let sumOfMultiplesOf3And5 list = 
    list 
    |> List.filter (fun x -> x%3 = 0 || x%5 = 0)
    |> List.sum

printfn "%i" (sumOfMultiplesOf3And5 (seq {1 .. 999} |> Seq.toList))
