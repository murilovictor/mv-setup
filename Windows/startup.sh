#################################
#### Executar com PowerShell ####
#################################

echo 'Iniciando Instalação . . .'

echo 'Install Chocolatey'
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

echo 'Install jdk11'
choco install openjdk11 -y

echo 'Install Nodejs'
choco install nodejs -y

echo 'Install Angular CLI'
npm install -g @angular/cli -y

echo 'Install Maven'
choco install maven -y

echo 'Install vscode'
choco install vscode -y

echo 'Install Intellij'
choco install intellijidea-ultimate -y

echo 'Install datagrip'
choco install datagrip -y

echo 'Install webstorm'
choco install webstorm -y

echo 'Install docker desktop'
choco install docker-desktop -y

echo 'Install Microsoft Teams'
choco install microsoft-teams.install -y

echo 'Install Git'
choco install git -y

echo 'Install Notepad++'
choco install notepadplusplus -y

echo 'Fim Instalação'