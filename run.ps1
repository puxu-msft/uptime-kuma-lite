param(
    [switch]$Detach,

    [Parameter(ValueFromRemainingArguments)]
    [string[]]$Remaining
)

$env:UPTIME_KUMA_PORT = 5003
$exe = node
$Arguments = @(".\server\server.js") + $Arguments

Push-Location $PSScriptRoot
try {
    Start-Process $exe -ArgumentList @Arguments `
        -Wait:$(-not $Detach) -NoNewWindow:$(-not $Detach)
}
finally {
    Pop-Location
}
