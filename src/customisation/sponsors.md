# Sponsors

Configure sponsor tiers and logos in `_data/content/sponsors.yml`.

## Structure

```yaml
seeking_sponsors: true
sponsorship_email: "cre@youruniversity.edu"

tiers:
  - name: "Platinum"
    sponsors:
      - name: "Company A"
        logo: "/assets/images/sponsors/company-a.png"
        url: "https://company-a.com"

  - name: "Gold"
    sponsors:
      - name: "Company B"
        logo: "/assets/images/sponsors/company-b.png"
        url: "https://company-b.com"
      - name: "Company C"
        logo: "/assets/images/sponsors/company-c.png"
        url: "https://company-c.com"
```

## Top-level fields

| Field | Required | Description |
|-------|----------|-------------|
| `seeking_sponsors` | No | Set to `true` to show sponsorship enquiry section |
| `sponsorship_email` | No | Email for sponsorship enquiries |

## Sponsor fields

| Field | Required | Description |
|-------|----------|-------------|
| `name` | Yes | Sponsor/company name |
| `logo` | No | Path to logo (shows name if missing) |
| `url` | No | Link to sponsor's website |

## Adding logos

1. Get the sponsor's logo (SVG preferred, PNG with transparent background also works)
2. Recommended size: approximately 300×90 pixels (or similar aspect ratio)
3. Save to `assets/images/sponsors/`
4. Reference with full path: `/assets/images/sponsors/logo.png`

### Logo tips

- **SVG format** is preferred (scales without quality loss)
- For PNG/JPG, use high resolution (2x display size)
- Ensure logos have **transparent backgrounds**
- Optimise file sizes for web (compress images)

### Placeholder logo

The template includes a placeholder at `assets/images/sponsors/sponsor-placeholder.svg`. This shows "Sponsor Logo" with recommended dimensions. Replace it with actual sponsor logos, or use it as a reference for sizing.

If a sponsor doesn't have a logo, their name will be displayed instead.

## Tier display

Higher tiers display larger logos. The order in the file determines display order.

## Minimal setup

If you don't have tiered sponsorship, use a single tier:

```yaml
tiers:
  - name: "Sponsors"
    sponsors:
      - name: "Sponsor Name"
        logo: "/assets/images/sponsors/logo.png"
        url: "https://sponsor.com"
```

## Disabling sponsors

If you don't have sponsors yet, disable the sponsors section. See [Feature Toggles](feature-toggles.md).

## Next steps

Customise your site's [Styling](styling.md) (colours, fonts).
