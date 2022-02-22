let square n = n*n

let sumOfSquares list = 
    list |> List.map square |> List.sum

let squareOfSum list =
    list |> List.sum |> square


let list = [1..100]
let sqSum = squareOfSum list
let sumSq = sumOfSquares list

printfn "%A - %A = %A" sqSum sumSq (sqSum - sumSq)
