let isPalindrome (n:int) =
    let stringN = string(n) |> Seq.toList
    stringN = (stringN |> List.rev)

let largestPalindromeProduct digits =
    let lowerLimit = pown 10 (digits - 1)
    let upperLimit = (pown 10 digits) - 1
    [for x = upperLimit downto lowerLimit do
        for y = x downto lowerLimit do
        yield (x * y)]
    |> List.filter isPalindrome
    |> List.max

printfn "%A" (largestPalindromeProduct 3)
