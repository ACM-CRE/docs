# Feature Toggles

Control which sections of your site are enabled or disabled. Useful for events that don't need all features, or while you're still preparing content.

## Configuration

Edit `_config.yml` and find the `features` section:

```yaml
features:
  i18n: true        # Multi-language support and language switcher
  sponsors: true    # Sponsors page and section
  flyer: true       # Flyer page and spread-the-word flyer section
  venue: true       # Venue page
```

Set any feature to `false` to disable it.

## Available toggles

| Feature | What it controls |
|---------|------------------|
| `i18n` | Language switcher in header, alternate language pages |
| `sponsors` | Sponsors page, sponsor logos on flyer |
| `flyer` | Flyer page, flyer download cards on spread-the-word page |
| `venue` | Venue page with location details and map |

## What happens when disabled

When you disable a feature:

1. **Navigation hides** - Links to that section disappear from the menu
2. **Page shows notice** - Direct URL visits see "Page Not Available" message
3. **SEO protected** - Disabled pages get `noindex` meta tag so search engines skip them
4. **Related sections hide** - In-page elements (like sponsor logos on flyer) are hidden

Pages aren't deleted - they're just hidden. Re-enable the feature anytime to bring them back.

## Examples

### Event without sponsors yet

```yaml
features:
  sponsors: false
```

The sponsors page link disappears from navigation. If someone visits `/sponsors/` directly, they see a friendly "Page Not Available" message.

### Single-language event

```yaml
features:
  i18n: false
```

The language switcher disappears from the header. Your site runs in one language only.

### Minimal event site

```yaml
features:
  i18n: false
  sponsors: false
  flyer: false
  venue: false
```

Just the essentials: home, schedule, people, and registration.

## Navigation configuration

Feature toggles work with the navigation system. In `_data/config/navigation.yml`, items can specify which feature they require:

```yaml
- label: sponsors
  url: /sponsors/
  feature: sponsors    # Only shows when sponsors feature is enabled
```

You don't need to edit this for basic usage - the template is pre-configured. This is just for reference if you're adding custom pages.

## Re-enabling features

To re-enable a feature:

1. Set it to `true` in `_config.yml`
2. Restart your local server (`Ctrl+C`, then `bundle exec jekyll serve`)
3. The navigation link and page content reappear

No content is lost when toggling features off and on.
