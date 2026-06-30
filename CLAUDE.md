# Kindlify — CLAUDE.md

## Overview

Flutter non-linear reader for ancient texts from the WorldLibraryProject corpus. Supports cross-references, non-linear navigation, and multiple ancient text formats.

## Commands

```bash
flutter pub get
flutter run -d ios
flutter run -d android
flutter run -d macos
flutter build ios
flutter build apk
flutter analyze
```

## Architecture

```
lib/
├── main.dart
├── app/
│   └── app.dart             # App root
├── core/                    # Shared utilities, theme
├── features/
│   ├── library/             # Text library browser
│   ├── reader/              # Core reading experience (non-linear nav)
│   ├── settings/
│   └── l10n/                # Localization
└── models/                  # Text, chapter, bookmark models
```

## Data Source

Texts come from the WorldLibraryProject corpus (`/Users/ol1n/Dev/GitHub/WorldLibraryProject`). The app reads pre-processed text files — format TBD by pipeline output.

## Key Feature

Non-linear navigation: readers can jump between cross-references, annotations, and parallel passages rather than reading linearly.

## Localization

`l10n/` present — app supports multiple UI languages.
