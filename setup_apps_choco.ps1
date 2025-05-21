# PowerShell script to install applications I commonly use on Windows 10/11.
# Install Chocolately (choco) package manager first.
# Written by Sam Saint-Pettersen <s dot pettersen +github at gmail dot com>

$pkgs = @(
    "brave"
    "powertoys"
	"sumatrapdf"
	"notepadplusplus"
    "git"
    "github-desktop"
    "powershell-core"
    "microsoft-windows-terminal"
    "mingw" # also https://nuwen.net/mingw.html
    "ldc" # also dmd
    "python"
    "python.pypy"
    "visualstudio2019buildtools"
    "rust-ms"
    "paint.net"
    "gimp"
    "visualstudio2022community"
)

function InstallApp {
	param(
		[string]$Package
	)

	Write-Host "Installing $pkg..."
	choco install $Package
}

function SetupApps {
	$count=$pkgs.Count
	Write-Host "Installing $count packages..."
	foreach ($pkg in $pkgs) {
		InstallApp -Package $pkg
	}
	Write-Host "Done."
}

SetupApps
