# Point X

Point X is a Flutter application built with a clean architecture approach, using Riverpod for state management, Freezed for immutable data models, GoRouter for navigation, and Dio/Retrofit for networking.

## Overview

This project demonstrates a modern Flutter structure with clear separation between:
- Presentation layer
- Domain layer
- Data layer
- Shared widgets and helpers

## Tech Stack

- Flutter
- Dart
- Riverpod + Riverpod Annotation
- Freezed
- GoRouter
- Dio + Retrofit
- Cached Network Image
- Carousel Slider
- Mocktail
- Flutter Test

## Project Structure

```text
lib/
  core/
    helper/
    network/
    theme/
  feature/
    product/
      data/
      domain/
      presentation/
  router/
  shared/
```

## Getting Started

### Prerequisites

- Flutter SDK 3.12.2 or newer
- Dart SDK compatible with the Flutter version
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Generate code (Freezed / Riverpod / Retrofit):
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Development Notes

- Use feature-based folders for business modules.
- Keep UI code in the presentation layer.
- Put business rules in the domain layer.
- Use repositories and data sources for external communication.
- Prefer immutable models and typed states.

## Testing

Run tests with:

```bash
flutter test
```

For feature-specific tests:

```bash
flutter test test/feature/product
```

## Notes

This project is a good starting point for building scalable Flutter apps with maintainable architecture and testability in mind.
