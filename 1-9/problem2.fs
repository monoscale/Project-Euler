//0, 1 -> Some(1, (1, 1))
//1, 1 -> Some(2, (1, 2))
//1, 2 -> Some(3, (2, 3))
//2, 3 -> Some(5, (3, 5))
//3, 5 -> Some(8, (5, 8))
let sum = 
    let fibSeq = Seq.unfold(fun (a,b) -> Some(a + b, (b, a+b)))(0,1)
    fibSeq |> Seq.takeWhile(fun x -> x <= 4000000) |> Seq.sumBy(fun x -> if x % 2 = 0 then x else 0)

printfn "%i" sum 
