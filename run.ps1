param(
    [switch]$Detach
)

$env:UPTIME_KUMA_PORT = 5003

Push-Location $PSScriptRoot
try {
    Start-Process node .\server\server.js -Wait:$(-not $Detach) -NoNewWindow:$(-not $Detach)
}
finally {
    Pop-Location
}
