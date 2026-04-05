# Setup on macOS

This guide will help you set up the ACM CRE template on your Mac.

## Step 1: Open Terminal

Press `Cmd + Space`, type "Terminal", and press Enter.

You'll see a window with a command prompt. This is where you'll type the commands below.

## Step 2: Install mise

mise is a tool that manages programming language versions. Run this command:

```bash
curl https://mise.run | sh
```

After it finishes, you'll see a message about adding mise to your shell. Run this command:

```bash
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
```

Now close Terminal completely (`Cmd + Q`) and reopen it.

### Verify mise is installed

```bash
mise doctor
```

You should see "No problems found". If you see errors, check the [mise installation docs](https://mise.jdx.dev/installing-mise.html).

## Step 3: Get the template

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

## Step 4: Install Ruby and dependencies

Tell mise to trust this project and install Ruby:

```bash
mise trust
mise install
```

This will download and install Ruby 3.4. It may take a few minutes.

Now install the project dependencies:

```bash
bundle install
```

## Step 5: Run the website locally

```bash
bundle exec jekyll serve
```

Open your browser and go to [http://localhost:4000](http://localhost:4000)

You should see the example event website!

## Step 6: Stop the server

Press `Ctrl + C` in Terminal to stop the server.

## Next steps

- [Customise your event details](../customization/event-details.md)
- [Deploy your site](../deployment.md)

## Troubleshooting

### "command not found: mise"

You need to restart Terminal after installing mise. Close it completely (`Cmd + Q`) and reopen.

### "mise trust" shows a warning

This is normal. The warning tells you that mise will install software defined in this project. Type `y` and press Enter to continue.

### "bundle install" fails with permission errors

Make sure you're using mise's Ruby, not the system Ruby:

```bash
which ruby
```

It should show a path containing `.local/share/mise/`. If it shows `/usr/bin/ruby`, mise isn't activated. Try restarting Terminal.
