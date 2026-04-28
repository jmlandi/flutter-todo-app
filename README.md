# Your To-Do App

## What This App Does?
This is a To-Do app. You can create, update, delete and read all of your tasks locally in your mobile phone.

## App Conventions
This section presents how the app is being structured and conventions to follow.

### Folder Structure
- `lib/`: The core application folder.
    - `main.dart`: Entry point.
    - `app/`: Global configurations, routing and theme.
    - `core/`: Shared components, contants, error handling, and utils.
    - `features`: Feature-based folders.
        - `feature_name`: A logic name related to the feature.
            - `data/`: Repositories and models.
            - `logic/`: State management.
            - `presentation`: Screen and widgets.

### Key Naming Conventions
- *Folders and Files*: `snake_case`
- *Classes and Enums*: `PascalCase`
- *Variables and Methods*: `camelCase`
- *Contants*: `camelCase` or `UPPER_SNAKE_CASE` 

### Best Practices
- *Keep `main.dart` clean*: Use it only for initialization.
- *Avoid Deep Nesting*: Limit nesting to keep path simple.
- *Use Barrel Files (`index.dart`)*: Use export statements to simplify imports.
- *Assets*: Put images, fonts, and JSON files in an `assets` folder at the root directory.
- *Tests*: Replicate the `lib` structure within the `test` folder.

## External Providers

### Amplitude
- *Analytics*: Flutter SDK related to Amplitude Analytics. 
- *Session Replay*: Flutter SDK related to Amplitude Session Replay.

### Braze
- *Mobile SDK*: Responsible for all Braze integrations.
