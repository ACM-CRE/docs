# Adding Languages

The template supports multiple languages. By default, it includes English and Hindi.

## How it works

- Each language has its own string file in `_data/strings/`
- Content pages are duplicated per language (e.g., `_pages/` for English, `hi/` for Hindi)
- The language switcher auto-discovers available languages from the strings files

## Adding a new language

### Step 1: Create strings file

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
  # ... translate all sections
```

Add your language to the `language_switcher` section:

```yaml
language_switcher:
  label: "Idioma"
  en: "English"
  hi: "हिन्दी"
  es: "Español"  # Add your language
```

### Step 2: Create content folder

Create a folder for your language:

```bash
mkdir es
```

### Step 3: Create content pages

For each page in `_pages/`, create a translated version in your language folder.

Each page needs this front matter:

```yaml
---
layout: home
title: "Bienvenidos"
lang: es
permalink: /es/
alternate:
  en: /
  hi: /hi/
---

Tu contenido traducido aquí.
```

The `alternate` field maps language codes to their page URLs. This enables the language switcher to link between translations.

### Step 4: Update existing pages

Add your new language to the `alternate` field on existing pages:

```yaml
# In _pages/index.md (English)
alternate:
  en: /
  hi: /hi/
  es: /es/  # Add this
```

Do this for all pages that have translations.

## Speaker translations

For translated speaker information, create language-specific files:

```
_data/content/speakers/
├── en.yml
├── hi.yml
└── es.yml
```

## Tips

- Start with the most important pages
- Keep the same file structure across languages
- Test all language switcher links
- Some content doesn't need translation (dates, times, names)

## Disabling multi-language

If you only need one language, disable i18n in `_config.yml`:

```yaml
features:
  i18n: false
```

This hides the language switcher. See [Feature Toggles](feature-toggles.md).

## Next steps

- [Feature Toggles](feature-toggles.md) - enable/disable site sections
