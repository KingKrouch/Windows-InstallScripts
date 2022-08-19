#Requires -RunAsAdministrator

# Install Chocolatey (May need to run the "choco install" comamnds again, make sure to run this script as admin) #
Set-ExecutionPolicy -Scope CurrentUser Unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Scoop
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Install Winfetch (through Scoop)
scoop install winfetch

# Game Clients #
winget install Valve.Steam --location C:\Steam
winget install HeroicGamesLauncher.HeroicGamesLauncher
winget install PolyMC.PolyMC

# Web and Multimedia #
winget install Mozilla.Firefox
winget install Discord.Discord
winget install CiderCollective.Cider
winget install MullvadVPN.MullvadVPN
winget install KDE.KDEConnect
winget install VideoLAN.VLC
winget install qBittorrent.qBittorrent

# Creative Stuff #
winget install KDE.Kdenlive
winget install KDE.Krita
winget install Autodesk.DesktopApp
winget install Wacom.WacomTabletDriver
# Add Affinity Photo Here.
choco install clipstudio-paint clipstudio-modeler -y

# GPU Driver Stuff and Video Recording #
# Need to add AMD Radeon Software here.
winget install OBSProject.OBSStudio

# Desktop Tweaks #
winget install valinet.ExplorerPatcher
winget install Microsoft.PowerToys

# File Software #
winget install RARLab.WinRAR
winget install WinDirStat.WinDirStat
choco install linkshellextension -y

# Redistributables #
winget install Microsoft.VC++2015-2022Redist-x86
winget install Microsoft.VC++2015-2022Redist-x64
winget install Microsoft.VC++2013Redist-x86
winget install Microsoft.VC++2013Redist-x64
winget install Microsoft.VC++2012Redist-x86
winget install Microsoft.VC++2012Redist-x64
winget install Microsoft.VC++2010Redist-x86
winget install Microsoft.VC++2010Redist-x64
winget install Microsoft.VC++2008Redist-x86
winget install Microsoft.VC++2008Redist-x64
winget install Microsoft.VC++2005Redist-x86
winget install Microsoft.VC++2005Redist-x64
winget install Microsoft.DirectX

# Development Packages #
winget install UnityTechnologies.UnityHub
winget install EpicGames.EpicGamesLauncher
winget install JanDeDobbeleer.OhMyPosh
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
winget install Canonical.Ubuntu
winget install Paragon.LinuxFileSystems
winget install Docker.DockerDesktop
winget install BaldurKarlsson.RenderDoc
winget install Jetbrains.Rider
winget install Jetbrains.CLion
winget install Jetbrains.PyCharm.Community
winget install Microsoft.VisualStudio.2022.Community
winget install Microsoft.VisualStudioCode
winget install KhronosGroup.VulkanSDK
winget install GitHub.GitHubDesktop
winget install GitHub.GitLFS
winget install Git.Git
choco install ghidra -y

# Office Applications #
winget install TheDocumentFoundation.LibreOffice

# Third Party Drivers #
choco install ds4windows -y

# Finally update everything to be double sure. #
winget upgrade --all
