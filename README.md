# day_navigator ![Pub Version](https://img.shields.io/pub/v/day_navigator.svg)

A simple and clean Flutter widget that lets users navigate between days with arrow buttons and also pick a date using a date picker. Perfect for calendar-based apps, scheduling, reminders, and more.

## Features

- Go to next/previous day
- Tap to pick a date with a date picker
- Customizable color
- Easy to integrate

## Getting started

Add this to your `pubspec.yaml`:

## Demo
![Day Navigator Demo](https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMnQzdHhueG9kbzBrYnN2YnU2dWNjcXA2bnNqOHdhc3praHkxdXd0YyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/gKtQfxNQCpUGFxE5Hb/giphy.gif)

```yaml
dependencies:
  day_navigator: ^1.0.0
```
### Usage:
DayNavigator(
  initialDate: DateTime.now(),
  color: Colors.purple,
  onDateChanged: (date) {
    print("New date: $date");
  },
),

Made with 💙 by Shebin. Feel free to contribute, drop issues, or just star the repo if you like it!