# Setup on Windows

This guide will help you set up the ACM CRE template on Windows.

## Step 1: Install Windows Terminal (recommended)

Windows Terminal is a modern terminal app that's easier to use than Command Prompt.

1. Open the Microsoft Store
2. Search for "Windows Terminal"
3. Install it

## Step 2: Install Git

1. Download Git from [git-scm.com/download/win](https://git-scm.com/download/win)
2. Run the installer with default options
3. Restart Windows Terminal after installation

Verify it works:
```bash
git --version
```

## Step 3: Install mise

Open Windows Terminal and run:

```bash
curl https://mise.run | sh
```

After it finishes, add mise to your shell. If you're using PowerShell (the default):

```powershell
Add-Content -Path $PROFILE -Value 'eval "$(~/.local/bin/mise activate pwsh)"'
```

If you're using Git Bash:

```bash
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
```

Close and reopen Windows Terminal.

### Verify mise is installed

```bash
mise doctor
```

You should see "No problems found".

## Step 4: Get the template

### Option A: Use as template (recommended)

1. Go to [github.com/ACM-CRE/acm-cre.github.io](https://github.com/ACM-CRE/acm-cre.github.io)
2. Click the green "Use this template" button
3. Name your repository `your-university-cre.github.io`
4. Clone your new repository:

```bash
git clone https://github.com/YOUR-USERNAME/your-university-cre.github.io.git
cd your-university-cre.github.io
```

### Option B: Clone directly (for testing)

```bash
git clone https://github.com/ACM-CRE/acm-cre.github.io.git
cd acm-cre.github.io
```

## Step 5: Install Ruby and dependencies

```bash
mise trust
mise install
```

This will download and install Ruby 3.4. It may take a few minutes.

Now install the project dependencies:

```bash
bundle install
```

## Step 6: Run the website locally

```bash
bundle exec jekyll serve
```

Open your browser and go to [http://localhost:4000](http://localhost:4000)

## Next steps

- [Customise your event details](../customization/event-details.md)
- [Deploy your site](../deployment.md)

## Troubleshooting

### "mise: command not found"

Restart Windows Terminal after installing mise.

### Ruby installation fails

Windows sometimes has issues with native extensions. Try:

```bash
mise install ruby@3.3
```

(Using Ruby 3.3 instead of 3.4)

### SSL certificate errors

Run this in PowerShell as Administrator:

```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
```
