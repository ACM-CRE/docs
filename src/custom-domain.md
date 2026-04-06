# Custom Domain

You can use your own domain like `cre.youruniversity.edu` instead of the default GitHub Pages URL.

See [About custom domains and GitHub Pages](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/about-custom-domains-and-github-pages) for an overview.

## Step 1: Add CNAME file

Create a file called `CNAME` (no extension) in your repo root:

```
cre.youruniversity.edu
```

## Step 2: Configure DNS

Add a CNAME record with your domain provider:

- **Name:** `cre` (or your subdomain)
- **Value:** `acm-cre-university.github.io` (your GitHub Pages URL)

## Step 3: Enable in GitHub Pages

1. Go to Settings > Pages
2. Under **Custom domain**, enter your domain
3. Check **Enforce HTTPS** (after DNS propagates)

DNS changes can take up to 48 hours to propagate.

See [Managing a custom domain](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site) for detailed instructions.

## Having issues?

See the [Troubleshooting](troubleshooting.md) guide for solutions to common domain problems.
