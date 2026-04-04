# Sponsors

Configure sponsor tiers and logos in `_data/content/sponsors.yml`.

## Structure

```yaml
tiers:
  - name: "Platinum"
    sponsors:
      - name: "Company A"
        logo: "sponsors/company-a.png"
        url: "https://company-a.com"

  - name: "Gold"
    sponsors:
      - name: "Company B"
        logo: "sponsors/company-b.png"
        url: "https://company-b.com"
      - name: "Company C"
        logo: "sponsors/company-c.png"
        url: "https://company-c.com"

  - name: "Silver"
    sponsors:
      - name: "Company D"
        logo: "sponsors/company-d.png"
```

## Adding logos

1. Get the sponsor's logo (PNG with transparent background works best)
2. Resize to reasonable width (recommended: max 200px wide)
3. Save to `assets/images/sponsors/`
4. Reference in the YAML file

## Tier display

Higher tiers display larger logos. The order in the file determines display order.

## Minimal setup

If you don't have tiered sponsorship, use a single tier:

```yaml
tiers:
  - name: "Sponsors"
    sponsors:
      - name: "Sponsor Name"
        logo: "sponsors/logo.png"
```

## Disabling sponsors

If you don't have sponsors yet, you can disable the sponsors section. See [Feature Toggles](../customization/README.md#feature-toggles) (coming soon).

## Fields reference

| Field | Required | Description |
|-------|----------|-------------|
| `name` | Yes | Sponsor/company name |
| `logo` | Yes | Path to logo (relative to `assets/images/`) |
| `url` | No | Link to sponsor's website |
