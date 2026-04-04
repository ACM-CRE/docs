# Organisers

Configure your host institution and partner organisations in `_data/config/organisers.yml`.

These logos and links appear in the site header, footer, and flyer.

## Structure

```yaml
host:
  name: "Your University"
  logo: "/assets/images/organisers/host-logo.svg"
  url: "https://youruniversity.edu"

partners:
  - name: "ACM iSIGCSE"
    logo: "/assets/images/organisers/acm-isigcse-768x256.jpg"
    url: "https://isigcse.acm.org"
  - name: "ACM India Council"
    logo: "/assets/images/organisers/acm-india-council.svg"
    url: "https://india.acm.org"
  - name: "ACM SIGCSE"
    logo: "/assets/images/organisers/acm-sigcse.png"
    url: "https://sigcse.org"
```

## Host institution

The `host` section configures your university or organisation:

| Field | Required | Description |
|-------|----------|-------------|
| `name` | Yes | Institution name (used in alt text and footer) |
| `logo` | Yes | Path to logo file |
| `url` | Yes | Link to institution website |

### Adding your logo

1. Prepare your logo (SVG recommended, PNG also works)
2. Recommended size: approximately 330×125 pixels
3. Save to `assets/images/organisers/host-logo.svg`
4. Update the `logo` path if using a different filename

The template includes a placeholder logo. Replace it with your institution's logo.

## Partner organisations

The `partners` array lists ACM organisations that co-host the event. These logos appear alongside your host logo in the header and footer.

| Field | Required | Description |
|-------|----------|-------------|
| `name` | Yes | Organisation name |
| `logo` | Yes | Path to logo file |
| `url` | Yes | Link to organisation website |

For standard CRE events, keep the default ACM partner logos (iSIGCSE, India Council, SIGCSE). These are already included in the template.

## Where these appear

- **Header:** Host logo and ACM iSIGCSE logo in the navigation bar
- **Footer:** All organiser logos with links
- **Flyer:** All organiser logos at the top

## Logo tips

- Use SVG format when possible (scales without quality loss)
- For PNG/JPG, use high resolution (2x display size)
- Ensure logos have transparent backgrounds
- Keep file sizes reasonable (optimise for web)

## Next steps

Configure your [Event Details](event-details.md) (name, date, location).
