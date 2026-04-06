# Deployment

Publish your site for free using [GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages).

## First-time deployment

Before you deploy, make sure `_config.yml` has the right `url` and `baseurl` for your repository. Wrong values will produce a deployed site that loads but is missing every stylesheet, script, and image. See [Event Details → Site settings](customisation/event-details.md#site-settings) for the two cases. The `rake deploy` task will refuse to run while `_config.yml` still contains template defaults.

### Step 1: Deploy

From your project folder:

```bash
bundle exec rake deploy
```

This builds your site and pushes it to a `gh-pages` branch.

### Step 2: Configure GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Select **gh-pages** branch and **/ (root)**
6. Click **Save**

See [Configuring a publishing source](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site) for more details.

### Step 3: Wait for deployment

GitHub will build and deploy your site. This takes 2-5 minutes.

Your site will be available at:

| Setup | URL |
|-------|-----|
| Organisation | `https://acm-cre-university.github.io` |
| Personal account | `https://username.github.io/acm-cre-university` |

## Updating your site

After making changes locally:

1. Test locally with `bundle exec jekyll serve`
2. When ready, run `bundle exec rake deploy`

Changes go live in a few minutes.

## Next steps

- [Customise your event details](customisation/event-details.md)
- [Quick Reference](quick-reference.md) - find which file to edit

## Having issues?

See the [Troubleshooting](troubleshooting.md) guide for solutions to common deployment problems.
