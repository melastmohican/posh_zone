
"C:\bin","C:\dev","c:\go","c:\secrets","c:\src","c:\tools" | ForEach-Object {
    $f = [System.IO.DirectoryInfo]$_
    $c = "robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP " + $f.FullName + " \\mordor\MEDIA\Backup\TMO\" + $f.name
    iex -COMMAND $c
}

robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP C:\Users\mjurgie1 \\mordor\MEDIA\Backup\TMO\mjurgie1
robocopy /MIR /FFT /r:0 /w:0 /MT:16 /NP C:\Users\MariuszJ \\mordor\MEDIA\Backup\TMO\MariuszJ