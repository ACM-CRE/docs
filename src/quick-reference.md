# Quick Reference

A lookup table for finding which file to edit.

## Configuration files

| What to change | Which file |
|----------------|------------|
| Host institution & partner logos | `_data/config/organisers.yml` |
| Event name, date, location | `_data/config/site.yml` |
| Navigation menu | `_data/config/navigation.yml` |
| Event schedule | `_data/content/schedule.yml` |
| Speakers & organisers | `_data/content/speakers/en.yml` |
| Sponsors | `_data/content/sponsors.yml` |
| Colours & fonts | `_sass/_variables.scss` |
| UI text (buttons, labels) | `_data/strings/en.yml` |
| Feature toggles | `_config.yml` |

## Customisation guides

| Topic | Guide |
|-------|-------|
| Host institution & partner logos | [Organisers](customisation/organisers.md) |
| Site identity, contact, registration | [Event Details](customisation/event-details.md) |
| Sessions, times, speakers | [Schedule](customisation/schedule.md) |
| Speakers, facilitators, organisers | [People](customisation/people.md) |
| Sponsor tiers and logos | [Sponsors](customisation/sponsors.md) |
| Colours, fonts, spacing | [Styling](customisation/styling.md) |
| Multi-language support | [Adding Languages](customisation/languages.md) |
| Enable/disable sections | [Feature Toggles](customisation/feature-toggles.md) |

## YAML basics

YAML files use a simple format:

```yaml
event:
  name: "My University CRE"
  date: "March 21, 2026"
```

Rules:
- Indentation matters (use 2 spaces, not tabs)
- Strings with special characters need quotes
- Lists use dashes: `- item`

See [yaml.org](https://yaml.org/spec/1.2.2/) for the full specification.
