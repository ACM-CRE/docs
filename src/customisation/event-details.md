# Event Details

Configure your event's basic information in these files:
- `_data/config/organisers.yml` for host institution and partners (see [Organisers](organisers.md))
- `_data/config/site.yml` for event details
- `_config.yml` for site settings

## Site settings

Edit `_config.yml` for basic site configuration. The `url` and `baseurl` settings depend on what you named your repository on GitHub. Get these wrong and your deployed site will load, but every stylesheet, script, and image will return 404, leaving the page unstyled.

The rule is simple: GitHub Pages serves a repository named `<owner>.github.io` from the root of that domain, and any other repository from a sub-path matching the repo name.

### Case A: repository is named `<owner>.github.io`

For example, an organisation `acm-cre-university` with a repo `acm-cre-university.github.io`. The site will be served from `https://acm-cre-university.github.io/`.

```yaml
title: "ACM COMPUTE Regional"
description: "Regional event for computing educators and researchers"
url: "https://acm-cre-university.github.io"
baseurl: ""
lang: en
```

### Case B: repository has any other name

For example, a personal account `jane-doe` with a repo `acm-cre-university`, or an organisation `acm-cre-university` with a repo `event-2026`. The site will be served from `https://<owner>.github.io/<repo-name>/`.

```yaml
title: "ACM COMPUTE Regional"
description: "Regional event for computing educators and researchers"
url: "https://jane-doe.github.io"
baseurl: "/acm-cre-university"
lang: en
```

The `baseurl` must start with `/` and must match your repository name exactly. It tells Jekyll to prefix every internal link and asset URL with that path so they resolve under the sub-path instead of the domain root.

## Event information

Edit `_data/config/site.yml` for event-specific details.

### Basic information

```yaml
event_name: "ACM COMPUTE Regional Event"
tagline: "For Computing Educators & Researchers"
date: "2026-03-21"
date_display: "Saturday, March 21, 2026"
time: "9:30 AM - 6:00 PM"
```

The `date` field uses ISO format (YYYY-MM-DD) for sorting. The `date_display` field is shown to visitors.

### Location

```yaml
location:
  name: "Your University"
  address: "123 Main Street, City, Country"
  url: "https://youruniversity.edu"
  map_url: "https://maps.app.goo.gl/your-map-link"
  map_embed_url: "https://www.google.com/maps/embed?pb=..."
```

To get the `map_embed_url`:
1. Open Google Maps and find your venue
2. Click Share > Embed a map
3. Copy the URL from the `src` attribute

### Registration

```yaml
registration:
  free: true
  form_url: "https://tally.so/r/your-form-id"
```

The template supports embedded forms from Tally, Google Forms, Typeform, or any service that provides an embed URL.

### Contact and social links

```yaml
social:
  email: "cre@youruniversity.edu"
  host_website: "https://youruniversity.edu"
  host_twitter: "https://x.com/YourUniversity"
  host_instagram: "https://instagram.com/youruniversity"
  isigcse_website: "https://isigcse.acm.org/home/"
  isigcse_twitter: "https://x.com/isigcse"
```

The `host_*` keys are for your institution's social links. The `isigcse_*` keys link to ACM iSIGCSE. Remove any links you don't need.

### Accommodation (optional)

```yaml
accommodation:
  available: true
  name: "University Guest House"
  location: "On campus"
  price: "INR 1,500 per night"
```

Set `available: false` or remove this section if you're not offering accommodation.

### Sponsorship (optional)

```yaml
sponsors:
  seeking: true
  form_url: "https://tally.so/r/sponsorship-form-id"
```

Set `seeking: false` when you've finished collecting sponsors.

## Complete example

```yaml
event_name: "Delhi University COMPUTE Regional Event"
tagline: "Empowering CS educators across North India"
date: "2026-04-15"
date_display: "Wednesday, April 15, 2026"
time: "9:00 AM - 5:30 PM"

location:
  name: "Delhi University, North Campus"
  address: "University Road, Delhi 110007, India"
  url: "https://du.ac.in"
  map_url: "https://maps.app.goo.gl/example"
  map_embed_url: "https://www.google.com/maps/embed?pb=..."

registration:
  free: true
  form_url: "https://tally.so/r/your-form-id"

social:
  email: "cre@du.ac.in"
  host_website: "https://du.ac.in"
  host_twitter: "https://x.com/DelhiUniv"

accommodation:
  available: true
  name: "University Guest House"
  location: "North Campus"
  price: "INR 1,200 per night"

sponsors:
  seeking: false
```

## Next steps

Set up your [Schedule](schedule.md) to add sessions and speakers.

---

**Tip:** If you haven't already, configure your [Organisers](organisers.md) (host institution and partner logos) first.
