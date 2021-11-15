let decryptedFilePath = "./1.txt"
let lines = System.IO.File.ReadAllLines(decryptedFilePath) 
            |> List.ofArray

let getTicker(line:string) =
    let index = line.IndexOf("|")
    line.Substring(0, index)


let duplicateKeys = 
    lines 
    |> List.skipWhile (fun (x:string) -> x.IndexOf("START-OF-DATA") = -1)
    |> List.skip 1
    |> List.takeWhile (fun (x:string) -> x.IndexOf("END-OF-DATA") = -1)
    |> List.map getTicker
    |> List.groupBy id
    |> List.filter( fun (_,set) -> set.Length > 1) // only look at buckets with more than one item
    |> List.map( fun (key,_) -> key ) // change each bucket to only its key


List.iter (fun x-> printfn "%s" x) duplicateKeys
