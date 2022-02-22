type Triplet = {a:int; b:int; c:int} with
    member p.IsPythagoreanTriplet = (p.a * p.a) + (p.b * p.b) = p.c * p.c
    member p.Sum = p.a + p.b + p.c
    member p.Product = p.a * p.b * p.c

let uniqueTriplet = [for a in 1..500 do
                        for b in (a+1)..500 do
                            for c in (b+1)..500 do yield {a=a;b=b;c=c}]
                        |> List.filter (fun p -> p.IsPythagoreanTriplet && p.Sum = 1000)
                        |> List.head

printfn "%d" uniqueTriplet.Product
