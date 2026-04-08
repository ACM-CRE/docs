# Setup on Other Platforms

The main [Setup](setup.md) guide is written and screenshotted for macOS. This page covers the platform-specific equivalents for Steps 3, 4 and 6 (Open Terminal, install the system toolchain, install mise) on Windows and Linux. Once your terminal and toolchain are ready, return to the main guide and pick up from Step 5 (Clone your repository); the GitHub steps and the rest of the project setup are platform-independent.

## Windows

### Open a terminal

1. Install **Windows Terminal** from the Microsoft Store.
2. Install **Git** from [git-scm.com/download/win](https://git-scm.com/download/win). This bundles a working `git` and a Bash environment.
3. Restart Windows Terminal after installing Git.

Verify Git is installed:

```bash
git --version
```

There is no equivalent of Step 4 (Xcode Command Line Tools) on Windows. Git for Windows already provides everything Ruby gems need to build.

### Install mise

```powershell
curl https://mise.run | sh
```

Activate mise in PowerShell:

```powershell
Add-Content -Path $PROFILE -Value 'eval "$(~/.local/bin/mise activate pwsh)"'
```

Or in Git Bash:

```bash
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
```

Close and reopen Windows Terminal so the activation takes effect.

## Linux

### Open a terminal and install build tools

Open your terminal (`Ctrl + Alt + T` on most distributions) and install Git, curl and the build toolchain. The toolchain replaces what the Xcode Command Line Tools provide on macOS.

Ubuntu or Debian:

```bash
sudo apt update
sudo apt install git curl build-essential
```

Fedora:

```bash
sudo dnf install git curl gcc make
```

Arch Linux:

```bash
sudo pacman -S git curl base-devel
```

### Install mise

```bash
curl https://mise.run | sh
```

Activate mise in Bash:

```bash
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
source ~/.bashrc
```

Or in Zsh:

```bash
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc
```

## Continue with the main guide

Once `git --version` and `mise --version` both work, head back to the main [Setup](setup.md#step-5-clone-your-repository) guide and pick up from Step 5 (Clone your repository).
