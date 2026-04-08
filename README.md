# ACM CRE Template Docs

mdBook source for the [ACM COMPUTE Regional Events template](https://github.com/ACM-CRE/website-template) documentation.

Live site: <https://acm-cre.github.io/docs/>

## Setup

Install [mdBook](https://rust-lang.github.io/mdBook/):

```bash
brew install mdbook       # macOS
cargo install mdbook      # any platform with Rust
```

## Develop

Start the dev server with live reload:

```bash
mdbook serve
```

Then open <http://localhost:3000>.

## Deploy

```bash
./scripts/deploy.sh
```

Builds the site and force-pushes to the `gh-pages` branch.
