
cd D:\Backup
"C:\bin","C:\dev","c:\go","c:\secrets","c:\src","c:\tools" | ForEach-Object {
    $f = [System.IO.DirectoryInfo]$_
    $c = "robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP " + $f.FullName + " D:\Backup\TMO\" + $f.name
    iex -COMMAND $c
}
robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP C:\Users\mjurgie1 D:\Backup\TMO\user-mjurgie1
dir TMO-*.zip | move-item -Path {$_.FullName} -Destination {"_"+$_.name} -Force
Get-ChildItem -Directory TMO | iex -COMMAND {"7z a TMO-"+$_.name + ".zip "+ $_.FullName}


robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP D:\Backup\TMO\user-mjurgie1 E:\Backup\TMO\user-mjurgie1
robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP D:\Backup\TMO\src E:\Backup\TMO\src
