[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Version
)

function Get-RemoteFileHash {
    param (
        [Parameter()]
        [string]
        $File
    )

    $fileName = Split-Path $File -Leaf
    Write-Information "Downloading $File to $fileName"
    Invoke-Webrequest $File -OutFile $fileName
    $fileHash = Get-FileHash -Algorithm SHA256 -Path $fileName
    $hash = $fileHash.Hash.ToLower()
    Write-Information "Hash of $fileName is $hash"
    Remove-Item -Path $fileName

    return $hash
}

Write-Information "Building version $Version"
Write-Information "Updating formula"
$zipHash = Get-RemoteFileHash -File "https://github.com/JanDeDobbeleer/aliae/archive/v$Version.tar.gz"
$content = Get-Content './formula.rb' -Raw
$content = $content.Replace('<VERSION>', $Version)
$content = $content.Replace('<SHA256>', $zipHash)
$content | Out-File -Encoding 'UTF8' '../aliae.rb'
Write-Information "Updated formula"

Write-Information "Updating cask"
$armHash = Get-RemoteFileHash -File "https://github.com/JanDeDobbeleer/aliae/releases/download/v$Version/aliae-darwin-arm64"
$intelHash = Get-RemoteFileHash -File "https://github.com/JanDeDobbeleer/aliae/releases/download/v$Version/aliae-darwin-amd64"
$content = Get-Content './cask.rb' -Raw
$content = $content.Replace('<VERSION>', $Version)
$content = $content.Replace('<SHA256-ARM>', $armHash)
$content = $content.Replace('<SHA256-INTEL>', $intelHash)
$content | Out-File -Encoding 'UTF8' '../Casks/aliae.rb'

