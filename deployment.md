# Deployment

Publish your site for free using GitHub Pages.

## First-time deployment

### Step 1: Run the deploy script

From your project folder:

```bash
./scripts/deploy.sh
```

This builds your site and pushes it to a `gh-pages` branch.

### Step 2: Configure GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Select **gh-pages** branch and **/ (root)**
6. Click **Save**

### Step 3: Wait for deployment

GitHub will build and deploy your site. This takes 2-5 minutes.

Your site will be available at:
```
https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/
```

Or if your repo is named `yourusername.github.io`:
```
https://yourusername.github.io/
```

## Updating your site

After making changes locally:

1. Test locally with `bundle exec jekyll serve`
2. When ready, run `./scripts/deploy.sh`

That's it! Changes go live in a few minutes.

## Custom domain (optional)

Want to use your own domain like `cre.youruniversity.edu`?

### Step 1: Add CNAME file

Create a file called `CNAME` (no extension) in your repo root:

```
cre.youruniversity.edu
```

### Step 2: Configure DNS

Add a CNAME record with your domain provider:
- **Name:** `cre` (or your subdomain)
- **Value:** `YOUR-USERNAME.github.io`

### Step 3: Enable in GitHub Pages

1. Go to Settings → Pages
2. Under **Custom domain**, enter your domain
3. Check **Enforce HTTPS** (after DNS propagates)

DNS changes can take up to 48 hours to propagate.

## Troubleshooting

### Site shows 404

- Check that GitHub Pages is configured (Settings → Pages)
- Ensure `gh-pages` branch exists
- Wait a few minutes for deployment

### Old content still showing

- GitHub Pages caches content. Wait 5-10 minutes.
- Hard refresh your browser: `Cmd + Shift + R` (macOS) or `Ctrl + Shift + R`

### Deploy script fails

Check that you have push access to the repository:

```bash
git push origin main
```

If this fails, you need to set up authentication. See [GitHub's guide](https://docs.github.com/en/authentication).
