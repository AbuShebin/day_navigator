# day_navigator

A simple and clean Flutter widget that lets users navigate between days with arrow buttons and also pick a date using a date picker. Perfect for calendar-based apps, scheduling, reminders, and more.

## Features

- Go to next/previous day
- Tap to pick a date with a date picker
- Customizable color
- Easy to integrate

## Getting started

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  day_navigator:
    git:
      url: https://github.com/AbuShebin/day_navigator.git

### Usage:
DayNavigator(
  initialDate: DateTime.now(),
  color: Colors.purple,
  onDateChanged: (date) {
    print("New date: $date");
  },
),

Made with 💙 by Shebin. Feel free to contribute, drop issues, or just star the repo if you like it!

---

### 🚀 Now What?

1. Replace your conflicted file (`README.md`) with the cleaned-up version above.
2. Save it.
3. Then run:

```.