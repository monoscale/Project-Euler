let factorial (n:bigint) = [bigint(1)..n] |> List.reduce (*)
let sumOfDigits n =
    string(n).ToCharArray() 
    |> Array.map (fun c -> int c - int '0')
    |> Array.sum
    

let number = bigint 100
printfn "%A" (sumOfDigits (factorial number))
