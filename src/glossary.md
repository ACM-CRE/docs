# Glossary

Technical terms explained in plain English.

## A

### API
Application Programming Interface. A way for different software programs to talk to each other.

## B

### Branch
A separate version of your code. Like making a copy to experiment with, without affecting the original.

### baseurl
A Jekyll setting that adds a path prefix to all URLs. Used when your site isn't at the root of a domain (e.g., `username.github.io/my-site/`).

### Bundle / Bundler
A tool that installs Ruby packages (gems) for your project. When you run `bundle install`, it reads the `Gemfile` and installs everything listed there.

## C

### Clone
Downloading a copy of a repository from GitHub to your computer.

### CNAME
A DNS record type that points one domain to another. Used to set up custom domains for GitHub Pages.

### Commit
A saved snapshot of your changes. Like a checkpoint in a video game.

### COMPUTE
An ACM conference focused on computing education, run by iSIGCSE (ACM India Special Interest Group on CS Education). COMPUTE Regional Events bring this community together locally.

### CRE
COMPUTE Regional Event. A local gathering of CS educators and researchers, using the ACM CRE template for their event website.

## D

### Deploy
Publishing your website so others can see it on the internet.

### DNS
Domain Name System. Translates domain names (like `example.com`) to IP addresses. You configure DNS records to point your custom domain to GitHub Pages.

## F

### Fork
Creating your own copy of someone else's repository on GitHub.

### Feature toggle
A setting that enables or disables a feature. In the ACM CRE template, feature toggles in `_config.yml` control which sections (sponsors, venue, i18n) are visible.

### Front matter
The section at the top of a markdown file between `---` marks. It contains settings for that page.

```markdown
---
layout: default
title: My Page
---
```

## G

### Gem
A Ruby package. Like an app for Ruby that adds functionality.

### gh-pages
A branch name commonly used for GitHub Pages deployments. The deploy script builds your site and pushes it to this branch.

### Git
A version control system that tracks changes to your files over time.

### GitHub
A website that hosts Git repositories and provides tools for collaboration.

### GitHub Pages
A free service from GitHub that hosts static websites directly from a repository.

## H

### HTML
HyperText Markup Language. The code that structures web pages.

## I

### i18n
Short for "internationalisation" (i + 18 letters + n). The process of designing software to support multiple languages. In the ACM CRE template, the i18n feature toggle enables multi-language support.

## J

### Jekyll
A static site generator. It takes your content (markdown files) and templates, and builds a complete website.

## L

### Liquid
A templating language used by Jekyll. The `{{ }}` and `{% %}` syntax you see in templates.

### Local / Localhost
Your own computer. "Running locally" means running on your machine, not on the internet.

## M

### Markdown
A simple way to format text. `**bold**` becomes **bold**, `# Heading` becomes a heading.

### mise
A tool that manages programming language versions. Ensures everyone uses the same Ruby version.

## P

### Pull Request (PR)
A proposal to merge your changes into another branch or repository.

### Push
Uploading your commits from your computer to GitHub.

## R

### Repository (Repo)
A folder containing your project files and their complete history.

### Ruby
A programming language. Jekyll is built with Ruby.

## S

### Sass / SCSS
A way to write CSS with extra features like variables. Jekyll compiles it to regular CSS.

### Static Site
A website made of fixed files (HTML, CSS, images) with no database or server-side code. Fast and secure.

## T

### Template
A reusable starting point. The ACM CRE template gives you a website structure you can customise.

### Terminal
A text-based interface for running commands on your computer. Also called command line, console, or shell.

## Y

### YAML
A format for configuration files. The `.yml` files in `_data/` are YAML. Uses indentation and colons:

```yaml
event:
  name: My Event
  date: 2026-03-21
```
