:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install all the packages
:::: Browsers
choco install googlechrome -y
choco install brave -y
choco install opera -y

:::: Dev tools

:: Git
choco install git -y

:: DB

:: Kits
choco install postman -y

:: Package managers
choco install yarn -y
choco install nvm -y

:: K8S
choco install minikube -y
choco install kubernetes-helm -y
choco install kubernetes-cli -y
choco install docker-compose -y

:::: Text editors / IDEs / Readers
choco install foxitreader -y
:: may need to check the path
choco install notepadplusplus -y
choco install visualstudiocode -y
choco install visualstudio2019community -y

:::: Media
choco install vlc -y
choco install spotify -y
 
:::: Utilities + other
:: Displayfusion is for multimonitor management 
choco install teamviewer -y
choco install xmind -y

:: download node through nvm
nvm install 11.13.0
nvm use 11.13.0

:: install npm global packages
npm install -g jshint nodemon @angular/cli typescript heroku
npm install --global windows-build-tools


:: check different version here // for .ps1
# If chocolatey not installed
## Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 
{ Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
ECHO "Installing apps via Chocolatey"
choco feature enable -n allowGlobalConfirmation

# MISC
choco install chocolateygui
choco install qbittorrent
choco install autohotkey

# PERIPHERAL
choco install lghub

# WINDOWS
choco install shutup10 # "OOSU10" > win+R
choco install defaultprogramseditor

# EDITORS
choco install firacode # Font for editors
choco install visualstudiocode
choco install notepadplusplus # \/ makes it default editor
choco install 7zip

# DEV
choco install git
choco install gradle
choco install nvm
choco install dotnet-sdk

# DEV-OPS
choco install sysinternals
choco install putty
choco install speccy
#choco install ilspy 

# Cleaning up
choco feature disable -n allowGlobalConfirmation