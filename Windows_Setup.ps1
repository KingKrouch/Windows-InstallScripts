#Requires -RunAsAdministrator
## Software Installation
# Install Chocolatey (May need to run the "choco install" comamnds again, make sure to run this script as admin) #
Set-ExecutionPolicy -Scope CurrentUser Unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Scoop
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
winget install Git.Git # Set up Git, as we will need that prior to setting up the extras scoop bucket.
scoop bucket add extras

# Install Fastfetch (through Scoop)
winget install 7zip.7zip # Set up 7-Zip, as we will need that before setting up fastfetch.
scoop install fastfetch

# Game Clients #
winget install Valve.Steam --location C:\Steam
winget install HeroicGamesLauncher.HeroicGamesLauncher
winget install ItchIo.Itch
winget install PrismLauncher.PrismLauncher
winget install ElectronicArts.EADesktop
winget install Ubisoft.Connect
# UWPHook for adding Microsoft Store stuff to Steam
winget install brianlima.uwphook
# Special K (Swiss Army Knife for PC Gaming)
winget install SpecialK.SpecialK
# Streaming Client for Games
winget install LizardByte.Sunshine
winget install MoonlightGameStreamingProject.Moonlight

# Web and Multimedia #
winget install Librewolf.Librewolf
winget install Discord.Discord
winget install Spotify.Spotify
winget install MullvadVPN.MullvadVPN
winget install KDE.KDEConnect
winget install clsid2.mpc-hc
winget install yt-dlp.yt-dlp
winget install yt-dlg.yt-dlg
winget install Gyan.FFmpeg
winget install 9N64SQZTB3LM # MPV.net
winget install CodecGuide.K-LiteCodecPack.Mega
winget install Apple.iTunes
winget install AndreWiethoff.ExactAudioCopy
winget install PeterPawlowski.foobar2000
winget install qBittorrent.qBittorrent
winget install Twilio.Authy
winget install Bitwarden.Bitwarden
# Set up Spicetify
iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex
iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex
iwr -useb https://raw.githubusercontent.com/NYRI4/Comfy-spicetify/main/install.ps1 | iex # Make sure to set the color theme to "Spotify".
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify config extensions webnowplaying.js
spicetify apply

# Creative Stuff #
winget install KDE.Kdenlive
winget install KDE.Krita
winget install Autodesk.DesktopApp
winget install Wacom.WacomTabletDriver
winget install BlenderFoundation.Blender
winget install Audacity.Audacity
winget install Obsidian.Obsidian
# Add Affinity Photo Here.
choco install clipstudio-paint clipstudio-modeler -y

# GPU Driver Stuff and Video Recording #
# Need to add AMD Radeon Software here.
winget install OBSProject.OBSStudio
winget install Elgato.4KCaptureUtility

# Desktop Tweaks #
winget install Microsoft.PowerToys
winget install Microsoft.PowerAutomateDesktop
winget install ModernFlyouts.ModernFlyouts
winget install startallback
winget install WinToys
winget install Rainmeter.Rainmeter
winget install Sandboxie.Plus
scoop install secureuxtheme

# File Software #
winget install RARLab.WinRAR
winget install AntibodySoftware.WizTree
winget install voidtools.Everything
winget install stnkl.EverythingToolbar
winget install HermannSchinagl.LinkShellExtension
winget install BotProductions.IconViewer
winget install LIGHTNINGUK.ImgBurn

# System Software #
winget install Henry++.MemReduct
winget install BleachBit.BleachBit

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
winget install Intel.PresentMon.Beta
winget install Unity.UnityHub
winget install EpicGames.EpicGamesLauncher
winget install GodotEngine.GodotEngine.Mono
winget install JanDeDobbeleer.OhMyPosh # Need to automate setting up the Powershell profile, since it does have some problems working on it's own.
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart # You still need to go about installing the WSL 2 Kernel.
winget install 9PDXGNCFSCZV # Ubuntu
winget install 9NPCP8DRCHSN # Fedora WSL
winget install Paragon.LinuxFileSystems # This is for EXT4 file systems. Wish WinBTRFS wasn't BSOD bait, as I'd otherwise be using those filesystems.
winget install Docker.DockerDesktop
winget install BaldurKarlsson.RenderDoc
winget install JetBrains.Toolbox
winget install Microsoft.VisualStudio.2022.Community
winget install Microsoft.VisualStudioCode
winget install KhronosGroup.VulkanSDK
winget install MSYS2.MSYS2
winget install Python.Python.3.10 # Needs to be this version at the moment to have Torch-DirectML support for Stable Diffusion.
winget install StrawberryPerl.StrawberryPerl
winget install GitHub.GitLFS
winget install GitHub.GitHubDesktop
winget install Kitware.CMake
winget install mesonbuild.meson
winget install PuTTY.PuTTY
winget install WerWolv.ImHex
winget install MHNexus.HxD
winget install TimKosse.FileZilla.Client
winget install EclipseAdoptium.Temurin.20.JDK
winget install EclipseAdoptium.Temurin.17.JDK
winget install MongoDB.Server
winget install Telerik.Fiddler.Classic
winget install VirtualHere.USBClient
winget install VirtualHere.USBServer
choco install ghidra -y

# Create shortcut for Godot (Mono)
## Specify the directory path where you want to search
$directoryPath = "$env:LOCALAPPDATA\Microsoft\WinGet\Packages\"
## Specify the substring you're looking for
$searchSubstring = "GodotEngine.Mono"
## Use Get-ChildItem to search for folders with the specified substring
$matchingFolders = Get-ChildItem -Path $directoryPath -Directory -Filter "*$searchSubstring*"

## Check if any matching folders were found
if ($matchingFolders.Count -gt 0) {
    ## Take the first matching folder (you can modify this based on your needs)
    $targetFolder = $matchingFolders[0].FullName
    ## Check if there is a subfolder inside the matching folder
    $subfolder = Get-ChildItem -Path $targetFolder -Directory | Select-Object -First 1

    if ($subfolder) {
        ## If a subfolder exists, use its name for the executable target
        $executableTarget = $subfolder.Name
	      $shortcutDisplayName = "Godot (.NET)"
	      $WshShell = New-Object -comObject WScript.Shell
 	      $Shortcut = $WshShell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\$shortcutDisplayName.lnk")
	      $Shortcut.TargetPath = Join-Path $targetFolder "$subfolder\$executableTarget.exe"
    	  $Shortcut.Save()
    }
    else {
        # If no subfolder exists, use a default name or modify as needed
        Write-Host "No subfolder exists. Cannot create shortcut."
    }
}
else {
    Write-Host "No matching folders found."
}

# Source Engine Modding Stuff
winget install RyanGregg.GCFScape
winget install RyanGregg.VTFEdit

# Install Barrier for cross-device input management
winget install DebaucheeOpenSourceGroup.Barrier

# Set up WSL2 Kernel for Docker
wget -o wsl_update_x64.msi https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
./wsl_update_x64.msi
rm wsl_update_x64.msi
wsl --set-default-version 2

# Set up some Windows Subsystem for Android stuff.
winget install 9N4P75DXL6FG # WSATools, this includes an APK sideloader.

# Office Applications #
winget install ONLYOFFICE.DesktopEditors
winget install JGraph.Draw

# Third Party Drivers #
winget install SteelSeries.GG
winget install CalcProgrammer1.OpenRGB
winget install RazerInc.RazerInstaller

# HidHide, for Razer's shitty software that still insists on installing an Xbox 360 gamepad driver and screwing up everything more than SteamInput ever did. Also ViGEmBus, so DualSenseX just works without installs needed #
winget install ViGEm.ViGEmBus
winget install ViGEm.HidHide

# Install AntiMicroX, for keyboard > controller emulation.
winget install AntiMicroX.antimicrox

# Set up DirectPlay and some legacy components for older PC games.
Enable-WindowsOptionalFeature -Online -FeatureName LegacyComponents -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName DirectPlay -NoRestart
# Set up Hyper-V Virtual Machine services.
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart
# Install VMWare Player
winget install VMWare.WorkstationPlayer

# Finally update everything to be double sure. #
winget upgrade --all


## Settings Tweaks
# Set up registry paths.
$MouseSettingsPath = "HKCU:\Control Panel\Mouse"
$ExplorerSettingsPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$DesktopSettingsPath = "HKCU:\Control Panel\Desktop"

# Disable Mouse Acceleration.
Set-ItemProperty -Path $MouseSettingsPath -Name MouseSpeed -Value 0
Set-ItemProperty -Path $MouseSettingsPath -Name MouseThreshold1 -Value 0
Set-ItemProperty -Path $MouseSettingsPath -Name MouseThreshold2 -Value 0

# Disable Sticky Keys, Filter Keys, And Toggle Keys.
Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Value "26"
Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\Keyboard Response" -Name "Flags" -Value "126"
Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility\ToggleKeys" -Name "Flags" -Value "58"

# Disable the Search Bar Holiday Theming
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDynamicSearchBoxEnabled" /d 0 /t REG_DWORD /f

# Show frequently used files and folders.
Set-ItemProperty -Path $ExplorerSettingsPath -Name "Start_TrackProgs" -Value 0
# Show file extensions for known file types.
Set-ItemProperty -Path $ExplorerSettingsPath -Name "HideFileExt" -Value 0
# Use check boxes to select items.
Set-ItemProperty -Path $ExplorerSettingsPath -Name "AutoCheckSelect" -Value 1
# Set Windows Explorer to open to "This PC" by default.
Set-ItemProperty -Path $ExplorerSettingsPath -Name "LaunchTo" -Value 1 -Type DWORD
# Disable desktop icons (I normally just pin the recycling bin to Explorer's Quick Access, and then disable the desktop icons because I don't want my wallpaper obscured by useless crap).
Set-ItemProperty -Path $ExplorerSettingsPath -Name "HideIcons" -Value 1 -Type DWORD

# Disable mouse shadows, amongst a few other things.
Set-ItemProperty -Path $DesktopSettingsPath -Name "UserPreferencesMask" -Value ([byte[]] (9E, 1E, 03, 80, 12, 00, 00, 00)) -Type Binary
# Set JPEG import quality for the desktop to 100%.
Set-ItemProperty -Path $DesktopSettingsPath -Name "JPEGImportQuality" -Value 100 -Type DWORD

# TODO: Add tweaks to automatically enable AutoHDR, Optimizations for Windowed Games, and Variable Refresh Rate.
