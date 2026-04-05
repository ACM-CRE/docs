# Adding Languages

The template supports multiple languages. By default, it includes English and Hindi.

## How it works

- Each language has its own content files
- UI strings (buttons, labels) are in `_data/strings/`
- Content pages are duplicated per language (e.g., `_pages/` for English, `hi/` for Hindi)

## Adding a new language

### Step 1: Create string file

Copy `_data/strings/en.yml` to `_data/strings/[code].yml`:

```bash
cp _data/strings/en.yml _data/strings/es.yml
```

Edit the new file and translate all strings:

```yaml
# _data/strings/es.yml
nav:
  home: "Inicio"
  schedule: "Programa"
  people: "Personas"
  register: "Registrarse"

buttons:
  register_now: "Regístrate Ahora"
```

### Step 2: Create content folder

Create a folder for your language:

```bash
mkdir es
```

### Step 3: Create content pages

For each page in `_pages/`, create a translated version in your language folder:

```markdown
---
# es/index.md
layout: home
title: "Bienvenido"
lang: es
alternate_lang: en
alternate_url: "/"
---

Tu contenido traducido aquí.
```

### Step 4: Add to navigation

Edit `_data/config/navigation.yml` to include links for the new language.

### Step 5: Update language switcher

Edit `_includes/utilities/language-switcher.html` to add your language option.

## Speaker translations

For translated speaker bios, create language-specific files:

```
_data/content/speakers/
├── en.yml
├── hi.yml
└── es.yml
```

## Tips

- Start with the most important pages
- Keep the same file structure across languages
- Test all navigation links
- Consider which content actually needs translation (schedule times don't, names might not)

## Disabling multi-language

If you only need one language, you can disable i18n in `_config.yml`:

```yaml
features:
  i18n: false
```

This hides the language switcher and simplifies the site. See [Feature Toggles](feature-toggles.md) for more about enabling and disabling site sections.
