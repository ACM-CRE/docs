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
- You're using the correct path format: `speakers/jane-doe.jpg` (no leading slash)

---

## Deployment Issues

### "gh-pages branch not found" when deploying

**Cause:** First-time deployment hasn't created the branch yet.

**Fix:** Run the deploy script:

```bash
./scripts/deploy.sh
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

### Site shows old content after deployment

**Cause:** GitHub Pages cache or CDN delay.

**Fix:** Wait 5-10 minutes. GitHub Pages can take time to update. You can also:
1. Check the deployment status in GitHub → Actions tab
2. Hard refresh your browser

---

## Still stuck?

1. Check existing [GitHub Issues](https://github.com/ACM-CRE/acm-cre.github.io/issues)
2. Open a new issue with:
   - What you were trying to do
   - The exact error message
   - Your operating system
   - Output of `mise doctor` and `ruby --version`
