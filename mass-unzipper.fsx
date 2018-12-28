#r "System.IO.Compression.dll"
#r "System.IO.Compression.FileSystem.dll"

open System
open System.IO
open System.IO.Compression

Directory.EnumerateFiles("./unzipped_files") 
|> Seq.iter File.Delete

Directory.EnumerateFiles("./zipped_files", "*.zip")
|> Seq.iter (fun x-> ZipFile.ExtractToDirectory(x, "./unzipped_files"))
