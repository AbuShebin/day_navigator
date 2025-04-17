# day_navigator! [Pub Version](https://img.shields.io/pub/v/day_navigator.svg)

A simple and clean Flutter widget that lets users navigate between days with arrow buttons and also pick a date using a date picker. Perfect for calendar-based apps, scheduling, reminders, and more.

## Features

- Go to next/previous day
- Tap to pick a date with a date picker
- Customizable color
- Easy to integrate

## Getting started

Add this to your `pubspec.yaml`:

## Demo
![Day Navigator GIF](https://imgur.com/a/y8WX2YH)


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

```.