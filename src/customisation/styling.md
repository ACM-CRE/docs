# Styling

Customise colours, fonts, and spacing in `_sass/_variables.scss`.

## Brand colour

The accent colour is used for buttons, links, and highlights:

```scss
$color-accent: #C45C3E;
$color-accent-hover: #A34D33;
$color-accent-light: rgba(196, 92, 62, 0.08);
```

When changing `$color-accent`, update the hover and light variants to match:
- `$color-accent-hover`: slightly darker version
- `$color-accent-light`: same colour at 8% opacity

### Choosing a brand colour

Pick a colour that:
- Matches your university/organisation branding
- Has enough contrast with white (for accessibility)
- Works for both light and dark elements

Use a [contrast checker](https://webaim.org/resources/contrastchecker/) to verify accessibility.

## Text colours

```scss
$color-text: #2D2D2D;         // Main text
$color-text-muted: #6B6B6B;   // Secondary text
$color-text-subtle: #9A9A9A;  // Tertiary text
```

## Background colours

```scss
$color-bg: #FFFFFF;           // Main background
$color-bg-subtle: #F7F7F7;    // Subtle background (cards, sections)
$color-border: #E5E5E5;       // Borders
```

## Typography

```scss
$font-family-sans-serif: "Outfit", system-ui, -apple-system, sans-serif;
$headings-font-weight: 600;
$font-weight-normal: 400;
$font-weight-semibold: 600;
```

The template uses [Outfit](https://fonts.google.com/specimen/Outfit) by default. To use a different font:
1. Add the font import to `_includes/layout/head.html`
2. Update `$font-family-sans-serif`

## Session type colours

Each session type on the schedule has its own colour:

```scss
$color-keynote: #C45C3E;      // Orange
$color-workshop: #2A7B72;     // Teal
$color-discussion: #5B7A9D;   // Blue
$color-ceremony: #C08B32;     // Gold
$color-break: #9A9A9A;        // Grey
```

## Spacing

```scss
$space-xs: 0.5rem;   // 8px
$space-sm: 1rem;     // 16px
$space-md: 2rem;     // 32px
$space-lg: 3rem;     // 48px
$space-xl: 4rem;     // 64px
```

## Layout

```scss
$container-max-width: 960px;  // Maximum content width
$text-max-width: 65ch;        // Maximum text line length
```

## Border radius

The template uses sharp corners by default:

```scss
$border-radius: 0;
$border-radius-lg: 0;
$border-radius-sm: 0;
```

For rounded corners, try `0.25rem` or `0.5rem`.

## After making changes

Restart Jekyll to see your changes:

```bash
# Stop current server (Ctrl + C)
bundle exec jekyll serve
```

## Next steps

You've completed the basic customisation. For advanced options:
- [Adding Languages](languages.md)
- [Feature Toggles](feature-toggles.md)
