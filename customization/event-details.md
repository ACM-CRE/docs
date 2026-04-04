# Event Details

Configure your event's basic information in `_data/config/site.yml`.

## Basic information

```yaml
event:
  name: "COMPUTE Regional Event"
  name_short: "CRE"
  tagline: "Bringing together CS educators"
  date: "March 21, 2026"

venue:
  name: "Your University"
  address: "123 Main Street, City, Country"

contact:
  email: "cre@youruniversity.edu"
```

## Social links

```yaml
social:
  twitter: "https://twitter.com/yourevent"
  linkedin: "https://linkedin.com/company/yourevent"
  instagram: "https://instagram.com/yourevent"
```

Leave blank or remove any social links you don't have.

## Registration

```yaml
registration:
  enabled: true
  url: "https://your-form-url.com"
  deadline: "March 15, 2026"
```

The template supports embedded forms (like Tally, Google Forms, or Typeform). Set the `url` to your form's embed URL.

## Important dates

```yaml
dates:
  registration_opens: "January 1, 2026"
  registration_closes: "March 15, 2026"
  event_date: "March 21, 2026"
```

## Example file

Here's a complete example:

```yaml
event:
  name: "Delhi University COMPUTE Regional Event"
  name_short: "DU-CRE"
  tagline: "Empowering CS educators across North India"
  date: "April 15, 2026"
  year: 2026

venue:
  name: "Delhi University, North Campus"
  address: "University Road, Delhi 110007, India"
  map_embed: "https://maps.google.com/..."

contact:
  email: "cre@du.ac.in"

social:
  twitter: "https://twitter.com/DUCRE2026"

registration:
  enabled: true
  url: "https://tally.so/r/your-form-id"
  deadline: "April 10, 2026"
```
