# People

Configure speakers, facilitators, and organisers in `_data/content/speakers/en.yml`.

## Structure

```yaml
keynote:
  - id: "jane-doe"
    name: "Dr. Jane Doe"
    affiliation: "University Name"
    photo: "/assets/images/speakers/jane-doe.jpg"

facilitators:
  - id: "john-smith"
    name: "John Smith"
    affiliation: "Another University"
    photo: "/assets/images/speakers/john-smith.jpg"

organisers:
  - id: "organiser-name"
    name: "Organiser Name"
    affiliation: "Your University"
    photo: "/assets/images/speakers/organiser-name.jpg"
```

## Fields

| Field | Required | Description |
|-------|----------|-------------|
| `id` | Yes | Unique identifier (used for linking from schedule) |
| `name` | Yes | Full name |
| `affiliation` | Yes | University or organisation |
| `photo` | No | Path to photo |

### About IDs

The `id` field links people to schedule sessions. The template includes placeholder IDs like `facilitator-1` and `facilitator-2`. Replace these with meaningful IDs for your speakers:

```yaml
# Template placeholder
- id: "facilitator-1"
  name: "Facilitator One"

# Your actual speaker
- id: "jane-doe"
  name: "Dr. Jane Doe"
```

**Important:** When you change an ID here, update all references in `schedule.yml` to match. See [Schedule](schedule.md) for details on linking speakers.

## Adding photos

1. Prepare a square photo (recommended: 400x400 pixels)
2. Save it to `assets/images/speakers/`
3. Reference it with the full path: `/assets/images/speakers/filename.jpg`

If a section has any photos, people without photos will show a placeholder with their initial.

## Photo tips

- Use square images for consistent display
- Optimise for web (compress to reduce file size)
- Use descriptive filenames (lowercase, no spaces)

## Multiple languages

For Hindi (or other languages), create a corresponding file at `_data/content/speakers/hi.yml` with translated content.

## Next steps

Add your [Sponsors](sponsors.md).
