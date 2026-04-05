# Setup on Linux

This guide will help you set up the ACM CRE template on Linux (Ubuntu, Debian, Fedora, etc.).

## Step 1: Open Terminal

Use your system's terminal application, or press `Ctrl + Alt + T` on most distributions.

## Step 2: Install required packages

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install git curl build-essential
```

### Fedora

```bash
sudo dnf install git curl gcc make
```

### Arch Linux

```bash
sudo pacman -S git curl base-devel
```

## Step 3: Install mise

```bash
curl https://mise.run | sh
```

Add mise to your shell:

**Bash:**
```bash
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
source ~/.bashrc
```

**Zsh:**
```bash
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc
```

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

Make sure you sourced your shell config:

```bash
source ~/.bashrc  # or ~/.zshrc
```

### Build errors about missing libraries

Install development libraries:

```bash
# Ubuntu/Debian
sudo apt install libffi-dev libyaml-dev

# Fedora
sudo dnf install libffi-devel libyaml-devel
```

Then run `bundle install` again.
