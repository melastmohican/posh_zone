# posh_zone
https://github.com/PowerShell/PowerShell \
https://github.com/JanDeDobbeleer/oh-my-posh \
https://github.com/pecigonzalo/Oh-My-Posh \
https://github.com/JohnRoos/PowerShell \
https://github.com/BornToBeRoot/PowerShell \
https://github.com/lazywinadmin/PowerShell \
https://github.com/clymb3r/PowerShell.git \
https://github.com/RamblingCookieMonster/PowerShell \
https://github.com/bwya77/PowerShell \
https://github.com/peterschmidtdk/PowerShell-Scripts \
https://github.com/peterschmidtdk/Windows-10-Spotlight-Photo-Backup-Script \
https://github.com/dahlbyk/posh-git \

# Powershell
https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7
https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7
https://gist.github.com/jchandra74/5b0c94385175c7a8d1cb39bc5157365e
https://docs.microsoft.com/en-us/powershell/scripting/gallery/installing-psget?view=powershell-7
https://cmder.net/
https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx
https://hodgkins.io/ultimate-powershell-prompt-and-git-setup
http://pecigonzalo.github.io/Oh-My-Posh/
https://support.atera.com/hc/en-us/articles/221113188-PowerShell-Scripts-Repository-for-Active-Directory
https://github.com/janikvonrotz/awesome-powershell
https://github.com/JW0914/awesome-powershell
https://wilsonmar.github.io/powershell-on-mac/
https://www.powershellgallery.com/https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-windows.html
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utilityconvertfrom-json?view=powershell-7
https://devblogs.microsoft.com/scripting/playing-with-json-and-powershell/
https://www.business.com/articles/using-powershell-with-json-data/
https://stackoverflow.com/questions/49136148/how-to-parse-json-response-in-powershell
http://techgenix.com/json-with-powershell/


# Log

Install-PackageProvider -Name NuGet -Force                                                                                                                                                                              Name                           Version          Source           Summary                                                ----                           -------          ------           -------                                                nuget                          2.8.5.208        https://onege... NuGet provider for the OneGet meta-package manager     

Install-Module -Name PowerShellGet -Force
choco install cmder -y
Install-Module posh-git -Force
Install-Module oh-my-posh -Force
Install-Module -Name PSReadLine -Force
WARNING: The version '2.0.0' of module 'PSReadline' is currently in use. Retry the operation after closing the
applications.
notepad $PROFILE

Install-Module -Name AWS.Tools.Installer -Force
Install-AWSToolsModule AWS.Tools.EC2,AWS.Tools.S3 -CleanUp 
    Installing module AWS.Tools.EC2 version 4.0.4.0
    Installing module AWS.Tools.S3 version 4.0.4.0
Install-AWSToolsModule AWS.Tools.IdentityManagement -Scope AllUsers
    Installing module AWS.Tools.IdentityManagement version 4.0.4.0



$request = 'http://musicbrainz.org/ws/2/recording/fcbcdc39-8851-4efc-a02a-ab0e13be224f?inc=artist-credits+isrcs+releases&fmt=json'

Invoke-WebRequest $request | ConvertFrom-Json  | select -expand releases | Select title, date, country

(Get-Content conducktor-response.json | ConvertFrom-Json).provider.token.jwt