
cd $env:USERPROFILE
go list ... >go_list.txt
npm list -g --depth 0 > npm_list.txt
choco list --local-only >choco_installed.txt
wmic /OUTPUT:InstalledPrograms.txt product get name,version,vendor

cd D:\Backup
"C:\bin","c:\secrets","c:\src" | ForEach-Object {
    $f = [System.IO.DirectkubectloryInfo]$_
    $c = "robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP " + $f.FullName + " D:\Backup\TMO\" + $f.name
    iex -COMMAND $c
}
robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP C:\Users\mjurgie1 D:\Backup\TMO\user-mjurgie1
dir TMO-*.zip | move-item -Path {$_.FullName} -Destination {"_"+$_.name} -Force
Get-ChildItem -Directory TMO | iex -COMMAND {"7z a TMO-"+$_.name + ".zip "+ $_.FullName}
