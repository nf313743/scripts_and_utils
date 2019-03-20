open System

let lines = System.IO.File.ReadAllLines("./shopping.txt")

let getPrice (line:string) =
    let index = line.IndexOf("£")
    let priceText = line.Substring(index+ 1)
        
    match Double.TryParse(priceText) with
    | false, _ -> None
    | true, num -> Some(num)
    

lines 
|> Array.choose(fun x -> getPrice(x)) 
|> Array.sum
|> (/) <| 2.0 
|> printfn "%f"

