# Schedule

Configure your event schedule in `_data/content/schedule.yml`.

## Structure

```yaml
schedule:
  - time: "09:00"
    end_time: "09:30"
    title: "Registration & Coffee"
    type: "break"

  - time: "09:30"
    end_time: "10:30"
    title: "Opening Keynote"
    type: "keynote"
    speaker: "jane-doe"
    description: "Welcome and introduction to the event."

  - time: "10:45"
    end_time: "12:00"
    title: "Workshop: Teaching Data Structures"
    type: "workshop"
    speaker: "john-smith"
    description: "Hands-on techniques for teaching DS."
```

## Session types

The template supports these session types (each has a different colour):

| Type | Colour | Use for |
|------|-------|---------|
| `keynote` | Orange | Main talks |
| `workshop` | Teal | Hands-on sessions |
| `discussion` | Blue | Panel discussions, Q&A |
| `break` | Grey | Coffee, lunch, registration |
| `ceremony` | Gold | Opening, closing, awards |

## Linking speakers

The `speaker` field should match the speaker's ID from `speakers/en.yml`:

```yaml
# In schedule.yml
- title: "Keynote"
  speaker: "jane-doe"  # Must match ID below

# In speakers/en.yml
speakers:
  - id: "jane-doe"
    name: "Dr. Jane Doe"
```

## Multiple speakers

For sessions with multiple speakers:

```yaml
- title: "Panel Discussion"
  speakers:
    - "jane-doe"
    - "john-smith"
```

## Tips

- Keep descriptions short (1-2 sentences)
- Include buffer time for transitions
- Test the schedule page locally to check formatting
