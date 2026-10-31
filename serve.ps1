# =========================================================================
# CHOREBLADE / SWEEPPROTOCOL - HIGH-SPEED LOCAL WEB SERVER
# Lightweight native PowerShell HTTP server powered by .NET TcpListener
# Zero installation, zero external dependencies.
# =========================================================================

param(
    [int]$Port = 8080
)

Write-Host "⚔️  [CHOREBLADE / SWEEPPROTOCOL] Local Arcade Server" -ForegroundColor Cyan
Write-Host "Binding to http://localhost:$Port ..." -ForegroundColor Gray

$listener = New-Object System.Net.Sockets.TcpListener([System.Net.IPAddress]::Loopback, $Port)
try {
    $listener.Start()
} catch {
    Write-Host "Port $Port is busy, trying port $($Port + 1)..." -ForegroundColor Yellow
    $Port = $Port + 1
    $listener = New-Object System.Net.Sockets.TcpListener([System.Net.IPAddress]::Loopback, $Port)
    $listener.Start()
}

$url = "http://localhost:$Port/index.html"
Write-Host "🚀 Server online! Opening browser: $url" -ForegroundColor Green
Write-Host "Press Ctrl+C to terminate server.`n" -ForegroundColor DarkGray

Start-Process $url

$mimeMap = @{
    ".html" = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".svg"  = "image/svg+xml"
    ".ico"  = "image/x-icon"
}

try {
    while ($true) {
        $client = $listener.AcceptTcpClient()
        $stream = $client.GetStream()
        $reader = New-Object System.IO.StreamReader($stream)
        $writer = New-Object System.IO.StreamWriter($stream)

        $requestLine = $reader.ReadLine()
        if (-not [string]::IsNullOrEmpty($requestLine)) {
            $tokens = $requestLine.Split(' ')
            if ($tokens.Length -ge 2) {
                $rawPath = $tokens[1].TrimStart('/')
                if ([string]::IsNullOrEmpty($rawPath) -or $rawPath -eq "/") {
                    $rawPath = "index.html"
                }

                # Strip query strings
                if ($rawPath.Contains("?")) {
                    $rawPath = $rawPath.Substring(0, $rawPath.IndexOf("?"))
                }

                $localPath = Join-Path (Get-Location) $rawPath

                if (Test-Path $localPath -PathType Leaf) {
                    $ext = [System.IO.Path]::GetExtension($localPath).ToLower()
                    $contentType = if ($mimeMap.ContainsKey($ext)) { $mimeMap[$ext] } else { "application/octet-stream" }
                    $bytes = [System.IO.File]::ReadAllBytes($localPath)

                    $header = "HTTP/1.1 200 OK`r`n" +
                              "Content-Type: $contentType`r`n" +
                              "Content-Length: $($bytes.Length)`r`n" +
                              "Connection: close`r`n" +
                              "Access-Control-Allow-Origin: *`r`n`r`n"

                    $headerBytes = [System.Text.Encoding]::UTF8.GetBytes($header)
                    $stream.Write($headerBytes, 0, $headerBytes.Length)
                    $stream.Write($bytes, 0, $bytes.Length)
                    $stream.Flush()
                } else {
                    $notFound = "HTTP/1.1 404 Not Found`r`nContent-Length: 9`r`nConnection: close`r`n`r`nNot Found"
                    $notFoundBytes = [System.Text.Encoding]::UTF8.GetBytes($notFound)
                    $stream.Write($notFoundBytes, 0, $notFoundBytes.Length)
                    $stream.Flush()
                }
            }
        }

        $writer.Close()
        $reader.Close()
        $stream.Close()
        $client.Close()
    }
} finally {
    $listener.Stop()
    Write-Host "`nServer stopped." -ForegroundColor Yellow
}
