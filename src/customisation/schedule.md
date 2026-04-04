# Schedule

Configure your event schedule in `_data/content/schedule.yml`.

## Basic structure

The file contains a flat array of sessions:

```yaml
- time: "09:00"
  end_time: "09:30"
  title: "Registration & Coffee"
  type: break

- time: "09:30"
  end_time: "10:30"
  title: "Opening Keynote"
  type: keynote
  speaker: "jane-doe"
  description: "Welcome and introduction to the event."
```

## Session fields

| Field | Required | Description |
|-------|----------|-------------|
| `time` | Yes | Start time (24-hour format) |
| `end_time` | No | End time |
| `title` | Yes | Session title |
| `type` | Yes | Session type (see below) |
| `description` | No | Short description (1-2 sentences) |
| `speaker` | No | Single speaker ID |
| `speakers` | No | Array of speaker IDs |
| `facilitators` | No | Array of facilitator IDs |

## Session types

Each type has a different colour on the schedule:

| Type | Use for |
|------|---------|
| `keynote` | Main talks |
| `workshop` | Hands-on sessions |
| `discussion` | Panel discussions, Q&A |
| `break` | Coffee, lunch, registration |
| `ceremony` | Opening, closing, awards |

## Linking speakers

The `speaker` field should match a speaker's ID from `speakers/en.yml`:

```yaml
# In schedule.yml
- title: "Keynote"
  speaker: "jane-doe"

# In speakers/en.yml
keynote:
  - id: "jane-doe"
    name: "Dr. Jane Doe"
```

## Multiple speakers

For sessions with multiple speakers, use the `speakers` array:

```yaml
- title: "Panel Discussion"
  type: discussion
  speakers:
    - "jane-doe"
    - "john-smith"
```

## Facilitators

For workshops with facilitators, use IDs from `speakers/en.yml`:

```yaml
- title: "Educator Workshop"
  type: workshop
  facilitators:
    - jane-doe
    - john-smith
  description: "Hands-on session for CS educators."
```

Facilitator IDs must match entries in the `facilitators` section of your speakers file.

## Complete example

```yaml
- time: "09:30"
  end_time: "10:00"
  title: "Registration"
  type: break
  description: "Registration, morning tea, and networking"

- time: "10:00"
  end_time: "10:30"
  title: "Opening"
  type: keynote
  speaker: "keynote-speaker"
  description: "Introduction to COMPUTE and regional events"

- time: "10:30"
  end_time: "11:30"
  title: "Discussion Forum"
  type: discussion
  facilitators:
    - jane-doe
    - john-smith
  description: "Group discussions on CS education challenges"

- time: "11:30"
  end_time: "13:00"
  title: "Workshop: Experience Reports"
  type: workshop
  facilitators:
    - jane-doe
  description: "Hands-on session for writing experience reports"

- time: "13:00"
  end_time: "14:00"
  title: "Lunch"
  type: break

- time: "17:30"
  end_time: "18:00"
  title: "Closing Ceremony"
  type: ceremony
  description: "Key takeaways and wrap-up"
```

## Tips

- Keep descriptions short (1-2 sentences)
- Include buffer time for transitions
- Test the schedule page locally to check formatting

## Next steps

Add your [People](people.md) (speakers, facilitators, organisers).
