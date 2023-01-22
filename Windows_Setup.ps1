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
winget install ItchIo.Itch
winget install PrismLauncher.PrismLauncher
# UWPHook for adding Microsoft Store stuff to Steam
winget install brianlima.uwphook
# Streaming Client for Games
winget install LizardByte.Sunshine

# Web and Multimedia #
winget install Mozilla.Firefox
winget install Discord.Discord
winget install CiderCollective.Cider
winget install MullvadVPN.MullvadVPN
winget install KDE.KDEConnect
winget install clsid2.mpc-hc
winget install 9N64SQZTB3LM
winget install CodecGuide.K-LiteCodecPack.Mega
winget install qBittorrent.qBittorrent
winget install Twilio.Authy
winget install Bitwarden.Bitwarden

# Creative Stuff #
winget install KDE.Kdenlive
winget install KDE.Krita
winget install Autodesk.DesktopApp
winget install Wacom.WacomTabletDriver
winget install BlenderFoundation.Blender
# Add Affinity Photo Here.
choco install clipstudio-paint clipstudio-modeler -y

# GPU Driver Stuff and Video Recording #
# Need to add AMD Radeon Software here.
winget install OBSProject.OBSStudio

# Desktop Tweaks #
winget install valinet.ExplorerPatcher
winget install Microsoft.PowerToys
winget install 9P1741LKHQS9
winget install Microsoft.PowerAutomateDesktop
winget install ModernFlyouts.ModernFlyouts

# File Software #
winget install RARLab.WinRAR
winget install WinDirStat.WinDirStat
choco install linkshellextension -y

# Redistributables #
winget install Microsoft.VCRedist.2005.x86
winget install Microsoft.VCRedist.2005.x64
winget install Microsoft.VCRedist.2008.x86
winget install Microsoft.VCRedist.2008.x64
winget install Microsoft.VCRedist.2010.x86
winget install Microsoft.VCRedist.2010.x64
winget install Microsoft.VCRedist.2012.x86
winget install Microsoft.VCRedist.2012.x64
winget install Microsoft.VCRedist.2013.x86
winget install Microsoft.VCRedist.2013.x64
winget install Microsoft.VCRedist.2015+.x86
winget install Microsoft.VCRedist.2015+.x64
winget install Microsoft.DirectX

# Development Packages #
winget install UnityTechnologies.UnityHub
winget install EpicGames.EpicGamesLauncher
winget install JanDeDobbeleer.OhMyPosh # Need to automate setting up the Powershell profile, since it does have some problems working on it's own.
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart # You still need to go about installing the WSL 2 Kernel.
winget install whitewaterfoundry.fedora-remix-for-wsl
winget install Paragon.LinuxFileSystems # This is for EXT4 file systems. Wish WinBTRFS wasn't BSOD bait, as I'd otherwise be using those filesystems.
winget install Docker.DockerDesktop
winget install BaldurKarlsson.RenderDoc
winget install JetBrains.Toolbox
winget install Microsoft.VisualStudio.2022.Community
winget install Microsoft.VisualStudioCode
winget install KhronosGroup.VulkanSDK
winget install Git.Git
winget install GitHub.GitLFS
winget install GitHub.GitHubDesktop
winget install PuTTY.PuTTY
winget install WerWolv.ImHex
winget install TimKosse.FileZilla.Client
winget install EclipseAdoptium.Temurin.11.JDK
choco install ghidra -y

# Office Applications #
winget install ONLYOFFICE.DesktopEditors
winget install JGraph.Draw

# Third Party Drivers #
winget install Corsair.iCUE.4
winget install Logitech.GHUB
choco install razer-synapse-3 -y

# HidHide, for Razer's shitty software that still insists on installing an Xbox 360 gamepad driver and screwing up everything more than SteamInput ever did. Also ViGEmBus, so DualSenseX just works without installs needed #
winget install ViGEm.ViGEmBus
winget install ViGEm.HidHide

# Finally update everything to be double sure. #
winget upgrade --all
