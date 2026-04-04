# Customisation

Your event website is configured through YAML files in the `_data/` folder. No coding required for basic customisation.

## Quick overview

| What to change | Which file |
|----------------|------------|
| Event name, date, location | `_data/config/site.yml` |
| Navigation menu | `_data/config/navigation.yml` |
| Event schedule | `_data/content/schedule.yml` |
| Speakers & organisers | `_data/content/speakers/en.yml` |
| Sponsors | `_data/content/sponsors.yml` |
| Colours & fonts | `_sass/_variables.scss` |
| UI text (buttons, labels) | `_data/strings/en.yml` |

## Customisation guides

- [Event Details](event-details.md) - Name, date, venue, contact info
- [Schedule](schedule.md) - Sessions, times, descriptions
- [People](people.md) - Speakers, facilitators, organisers
- [Sponsors](sponsors.md) - Sponsor tiers and logos
- [Styling](styling.md) - Colours, fonts, spacing
- [Adding Languages](languages.md) - Multi-language support

## How YAML works

YAML files use a simple format:

```yaml
event:
  name: "My University CRE"
  date: "March 21, 2026"
```

Important rules:
- Indentation matters (use 2 spaces, not tabs)
- Strings with special characters need quotes
- Lists use dashes: `- item`

## Testing changes

After editing files, check your local site:

```bash
bundle exec jekyll serve
```

Visit [http://localhost:4000](http://localhost:4000) to see your changes.

If the site won't build, check for YAML syntax errors. Common issues:
- Wrong indentation
- Missing closing quotes
- Tabs instead of spaces
