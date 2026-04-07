# Troubleshooting

Common problems and how to fix them.

## Setup Issues

### "command not found: mise"

**Cause:** mise isn't in your PATH, or Terminal wasn't restarted.

**Fix:** Close Terminal completely and reopen it. On macOS, use `Cmd + Q` to fully quit.

---

### "command not found: bundle" or "command not found: jekyll"

**Cause:** Ruby isn't installed or mise isn't activated.

**Fix:** Check which Ruby is being used:

```bash
which ruby
```

If it shows `/usr/bin/ruby` (system Ruby), mise isn't working. Try:

```bash
mise trust
mise install
```

---

### "bundle install" fails with permission errors

**Cause:** You're using system Ruby instead of mise Ruby.

**Fix:** Check `which ruby`. It should show a path containing `.local/share/mise/`. If not, ensure mise is activated in your shell config.

---

### `bundle install` fails with `'iostream' file not found` (macOS)

Your Xcode Command Line Tools install is broken or incomplete. If you skipped [Step 4 of Setup](getting-started/setup.md#step-4-install-the-xcode-command-line-tools), start there. If you already ran it and still hit this, the install is in an inconsistent state and needs to be reinstalled. The C++ standard library headers are missing from the location clang searches first, so any gem with C++ native extensions (eventmachine, google-protobuf, etc.) fails to build.

You can confirm this is the issue by running:

```bash
echo '#include <iostream>
int main(){}' | clang++ -x c++ - -o /tmp/t
```

If you see `'iostream' file not found`, it's this problem.

To fix it, reinstall Command Line Tools. The version must match your macOS version (e.g. macOS 26.0.1 needs the matching CLT release).

```bash
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
```

Click through the installer dialog and wait for it to finish.

If `xcode-select --install` fails with "Xcode is not currently available from the software update server", this can happen on older macOS versions where Apple no longer serves CLT through Software Update. Download the installer manually instead:

1. Go to [developer.apple.com/download/all](https://developer.apple.com/download/all/?q=command%20line%20tools%20for%20xcode) (you'll need to sign in with an Apple ID)
2. Find the **Command Line Tools for Xcode** release that matches your macOS version
3. Download the `.dmg` and run the installer

After install, verify with the `clang++` test above, then retry `bundle install`.

---

### "Your Ruby version is X, but your Gemfile specified Y"

**Cause:** The project expects a different Ruby version than what you have.

**Fix:**

```bash
mise install
```

This installs the correct Ruby version defined in `mise.toml`.

---

## Build Issues

### Jekyll build fails with "Liquid syntax error"

**Cause:** There's a typo in a template file.

**Fix:** The error message will tell you which file and line number. Check for:
- Unclosed `{% %}` or `{{ }}` tags
- Missing `endif` or `endfor`
- Typos in variable names

---

### Changes not showing up

**Cause:** Browser cache or Jekyll didn't rebuild.

**Fix:**
1. Hard refresh: `Cmd + Shift + R` (macOS) or `Ctrl + Shift + R` (Windows/Linux)
2. Stop Jekyll (`Ctrl + C`) and restart: `bundle exec jekyll serve`

---

### Images not loading

**Cause:** Wrong file path or filename.

**Fix:** Check that:
- The image file exists in `assets/images/`
- The filename in your YAML matches exactly (case-sensitive)
- You're using the correct path format: `/assets/images/speakers/jane-doe.jpg`

---

## YAML Issues

### Indentation errors

**Cause:** YAML requires spaces, not tabs. Wrong indentation breaks the file.

**Fix:** Configure your editor to use spaces (2 spaces per indent). Look for mixed tabs/spaces:

```yaml
# Wrong (tabs or inconsistent)
event:
	name: "My Event"    # Tab character

# Correct (2 spaces)
event:
  name: "My Event"
```

---

### Strings with special characters

**Cause:** Values containing colons, quotes, or special characters need to be quoted.

**Fix:** Wrap the value in quotes:

```yaml
# Wrong
description: Welcome: An Introduction

# Correct
description: "Welcome: An Introduction"
```

---

### YAML changes not appearing

**Cause:** Jekyll doesn't always detect YAML file changes.

**Fix:** Stop the server (`Ctrl + C`) and restart:

```bash
bundle exec jekyll serve
```

---

## Field Name Issues

### People not displaying

**Cause:** Using wrong field names in `speakers/en.yml`.

**Fix:** Check these common mistakes:

| Wrong | Correct |
|-------|---------|
| `image:` | `photo:` |
| `keynote_speakers:` | `keynote:` |
| `role:` | (not used) |
| `bio:` | (not used) |

---

### Event details not showing

**Cause:** Using wrong field names in `site.yml`.

**Fix:** Check these common mistakes:

| Wrong | Correct |
|-------|---------|
| `event.name` | `event_name` |
| `venue:` | `location:` |
| `contact.email` | `social.email` |

---

### Facilitators not appearing on schedule

**Cause:** Using names instead of IDs in `schedule.yml`.

**Fix:** Use facilitator IDs that match entries in `speakers/en.yml`:

```yaml
# Wrong
facilitators:
  - "Dr. Jane Doe"

# Correct
facilitators:
  - jane-doe
```

---

## Language Issues

### Language switcher not working

**Cause:** Wrong front matter format or missing language in strings.

**Fix:** Check the `alternate` field uses an object, not separate fields:

```yaml
# Wrong
alternate_lang: en
alternate_url: /

# Correct
alternate:
  en: /
  hi: /hi/
```

Also ensure your language is listed in `_data/strings/[lang].yml` under `language_switcher`.

---

## Deployment Issues

### "gh-pages branch not found" when deploying

**Cause:** First-time deployment hasn't created the branch yet.

**Fix:** Run the deploy command:

```bash
bundle exec rake deploy
```

This creates the `gh-pages` branch automatically.

---

### Site shows 404 after deployment

**Cause:** GitHub Pages isn't configured correctly.

**Fix:**
1. Go to your repo on GitHub
2. Settings → Pages
3. Under "Source", select "Deploy from a branch"
4. Select `gh-pages` branch and `/ (root)`
5. Save and wait a few minutes

---

### Deployed site loads but CSS, JS and images are missing

The page shows up at your GitHub Pages URL but it's unstyled, no images load, and the browser devtools Network tab shows 404s for `/assets/css/style.css` and similar files. The 404 URLs point at your domain root (e.g. `https://jane-doe.github.io/assets/...`) instead of your project sub-path (`https://jane-doe.github.io/acm-cre-university/assets/...`).

This means `_config.yml` has the wrong `baseurl` for your repository. GitHub Pages serves any repo whose name does not end in `.github.io` from a sub-path matching the repo name, and Jekyll needs `baseurl` set so it can prefix every internal URL with that sub-path.

Open `_config.yml` and set `baseurl` to `/your-repo-name` (with the leading slash, matching the repo name exactly). See [Event Details → Site settings](customisation/event-details.md#site-settings) for the full explanation and both cases. Then redeploy:

```bash
bundle exec rake deploy
```

---

### Site shows old content after deployment

**Cause:** GitHub Pages cache or CDN delay.

**Fix:** Wait 5-10 minutes. GitHub Pages can take time to update. You can also:
1. Check the deployment status in GitHub → Actions tab
2. Hard refresh your browser

---

## Still stuck?

1. Check existing [GitHub Issues](https://github.com/ACM-CRE/website-template/issues)
2. Open a new issue with:
   - What you were trying to do
   - The exact error message
   - Your operating system
   - Output of `mise doctor` and `ruby --version`
