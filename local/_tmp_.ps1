dir TMO-bin.zip | rename-item -NewName {$_.name -replace "TMO-","_TMO-"}
dir TMO-dev.zip | move-item -Path {$_.FullName} -Destination {"_"+$_.name} -Force

 Get-ChildItem -Directory TMO | iex -COMMAND {"7z a TMO-"+$_.name + ".zip "+ $_.FullName}

 "C:\bin","C:\dev","c:go","c:\src","c:\tools","C:\Users\mjurgie1" | ForEach-Object {
    write-output $_
  }

 "C:\bin","C:\dev","c:go","c:\src","c:\tools","C:\Users\mjurgie1" | ForEach-Object {
    $f = [System.IO.DirectoryInfo]$_
    write-output $f.fullName
  }

  "C:\bin","C:\dev","c:go","c:\src","c:\tools","C:\Users\mjurgie1" | ForEach-Object {
    $f = [System.IO.DirectoryInfo]$_
    $c = "robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP " + $f.FullName + " D:\Backup\TMO\" + $f.name
    write-output $c
  }


  "C:\bin","C:\dev","c:go","c:\src","c:\tools","C:\Users\mjurgie1" | ForEach-Object {
    $f = [System.IO.DirectoryInfo]$_
    $c = "robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP " + $f.FullName + " D:\Backup\TMO\" + $f.name
    iex -COMMAND $c
  }

  workflow wrk {
    parallel {
      dir c:\ 
      dir d:\  
     }
   }
    