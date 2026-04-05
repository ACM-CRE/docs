# People

Configure speakers, facilitators, and organisers in `_data/content/speakers/en.yml`.

## Structure

```yaml
keynote_speakers:
  - id: "jane-doe"
    name: "Dr. Jane Doe"
    role: "Professor of Computer Science"
    affiliation: "University Name"
    image: "speakers/jane-doe.jpg"
    bio: "Brief biography here."

facilitators:
  - id: "john-smith"
    name: "John Smith"
    role: "Senior Lecturer"
    affiliation: "Another University"
    image: "speakers/john-smith.jpg"

organisers:
  - id: "organiser-name"
    name: "Organiser Name"
    role: "Event Chair"
    affiliation: "Your University"
    image: "organisers/organiser-name.jpg"
```

## Adding photos

1. Prepare a square photo (recommended: 400x400 pixels)
2. Save it to `assets/images/speakers/` (or `organisers/` for organisers)
3. Use the filename in the `image` field

**Example:**
- Save photo as `assets/images/speakers/jane-doe.jpg`
- Set `image: "speakers/jane-doe.jpg"`

## Photo tips

- Use square images for consistent display
- Optimise images for web (compress to reduce file size)
- Use descriptive filenames (no spaces, lowercase)

## Fields reference

| Field | Required | Description |
|-------|----------|-------------|
| `id` | Yes | Unique identifier (used for linking from schedule) |
| `name` | Yes | Full name |
| `role` | Yes | Job title or role at event |
| `affiliation` | No | University or organisation |
| `image` | No | Path to photo (relative to `assets/images/`) |
| `bio` | No | Short biography |

## Multiple languages

For Hindi (or other languages), create a corresponding file at `_data/content/speakers/hi.yml` with translated names and bios.
