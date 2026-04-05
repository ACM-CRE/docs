# Styling

Customise colours, fonts, and spacing in `_sass/_variables.scss`.

## Colours

```scss
// Primary brand colour (buttons, links, accents)
$primary: #C45C3E;

// Text colours
$text-color: #2D2D2D;
$text-muted: #6B6B6B;

// Background colours
$background: #FFFFFF;
$background-subtle: #F7F7F7;

// Border colour
$border-color: #E5E5E5;
```

### Choosing a primary colour

Pick a colour that:
- Matches your university/organisation branding
- Has enough contrast with white (for accessibility)
- Works for both light and dark elements

**Tip:** Use a colour picker tool to find your exact brand colour's hex code.

## Typography

```scss
// Main font family
$font-family-sans-serif: "Outfit", system-ui, -apple-system, sans-serif;

// Heading weight (400 = normal, 600 = semi-bold, 700 = bold)
$headings-font-weight: 600;

// Base font size
$font-size-base: 1rem;
```

## Spacing

```scss
$spacing-xs: 0.5rem;
$spacing-sm: 1rem;
$spacing-md: 2rem;
$spacing-lg: 3rem;
$spacing-xl: 4rem;
```

## Border radius

```scss
// 0 = sharp corners, larger values = rounded
$border-radius: 0;
```

## Container width

```scss
// Maximum content width
$container-max-width: 960px;
```

## Session type colours

For the schedule, each session type has its own colour:

```scss
$session-keynote: #C45C3E;    // Orange
$session-workshop: #2A7B72;   // Teal
$session-discussion: #5B7A9D; // Blue
$session-ceremony: #C08B32;   // Gold
$session-break: #9A9A9A;      // Grey
```

## After making changes

Restart Jekyll to see your changes:

```bash
# Stop current server (Ctrl + C)
bundle exec jekyll serve
```

## Accessibility

When changing colours, ensure sufficient contrast:
- Text on background: minimum 4.5:1 ratio
- Large text on background: minimum 3:1 ratio

Use a [contrast checker](https://webaim.org/resources/contrastchecker/) to verify.
