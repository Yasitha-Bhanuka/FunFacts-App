# FunFacts

A new Flutter project.

## Description

FunFacts is a Flutter application designed to provide interesting and fun facts to users. This project leverages several dependencies to enhance functionality and user experience.

## Getting Started

### Prerequisites

Ensure you have Flutter installed on your machine. You can download it from [flutter.dev](https://flutter.dev).

### Installation

1. Clone the repository:
  ```sh
  git clone https://github.com/Yasitha-Bhanuka/FunFacts-App.git
  ```
2. Navigate to the project directory:
  ```sh
  cd funfacts
  ```
3. Install the dependencies:
  ```sh
  flutter pub get
  ```

### Running the App

To run the app on an emulator or a physical device, use the following command:
```sh
flutter run
```

## Dependencies

The project uses the following dependencies:

- **flutter:** The core Flutter SDK.
- **cupertino_icons:** iOS style icons.
- **dio:** A powerful HTTP client for Dart.
- **provider:** A wrapper around InheritedWidget to make them easier to use and more reusable.
- **shared_preferences:** A Flutter plugin for reading and writing simple key-value pairs.

## Development Dependencies

- **flutter_test:** A library for writing tests in Flutter.
- **flutter_lints:** A package that contains a set of recommended lints to encourage good coding practices.

## Project Structure

```plaintext
funfacts/
├── android/
├── build/
├── ios/
├── lib/
│   ├── main.dart
│   ├── providers/
│   ├── screens/
│   └── widgets/
├── test/
├── pubspec.yaml
└── README.md
```

- **lib/main.dart:** The entry point of the application.
- **lib/providers:** Contains provider classes for state management.
- **lib/screens:** Contains the UI screens.
- **lib/widgets:** Contains reusable widgets.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## Contact

If you have any questions or feedback, feel free to reach out at [yasithabhanukac@gmail.com](mailto:yasithabhanukac@gmail.com).

## Locally Manage Theme Mode When Closed App Doesn't Change Theme Mode
### Demo Video

Here is a demo video of the FunFacts application:

![Demo Video](lib/assets/ScreenRecord.mp4)