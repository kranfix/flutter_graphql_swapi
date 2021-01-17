# flutter_graphql_swapi

A Star Wars API based on [this figma design](https://www.figma.com/file/Ceoqa8DbrtyKoOBDR77ktm/Ravn-Code-Challenge?node-id=8%3A0) and [netifly swapi](https://swapi-graphql.netlify.app/.netlify/functions/index).

## Getting Started

The project does not contains the platform folders.
Thus there is necessary to create then only once:

```
flutter create .
```

Install all dependencies:

```
flutter pub get
```

And use the code generator for data models:

```
flutter pub run build_runner build
```

Do not forget to allow network permissions:

- [Android](https://stackoverflow.com/questions/55603979/why-flutter-application-cant-connect-to-internet-when-install-app-release-apk)
- [MacOS](https://stackoverflow.com/questions/57841871/flutter-http-get-fails-on-macos-build-target-connection-failed)
