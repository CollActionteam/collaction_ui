# collaction_ui
The Common UI Package for CollActions

## Installation
To add a package that is located in a subfolder of a GitHub repository to your Dart project, you need to follow these steps:

Add the GitHub repository as a dependency in your pubspec.yaml file:
```yaml
dependencies:
  my_package:
    git:
      url: git@github.com:/CollActionteam/collaction_ui.git
```

Specify the path to the package folder in the repository by appending the subfolder path to the end of the git URL:
```yaml
dependencies:
  my_package:
    git:
      url: git@github.com:/CollActionteam/collaction_ui.git
      path: packages/<package>
      ref: <version tag>
```
Run flutter pub get to download and install the package.
```bash
$ pub get
```
e.g Installing common uis
```yaml
dependencies:
  flutter:
    sdk: flutter

  common:
    git:
      url: git@github.com:/CollActionteam/collaction_ui.git
      path: packages/common
      ref: v0.0.1
```

## Making Changes

The project is configured to use melos. You can check the docs on [how to setup melos](https://melos.invertase.dev/getting-started), then run `melos bootstrap`

For VSCode users, you can also add the [Melos VSCode extension](https://marketplace.visualstudio.com/items?itemName=blaugold.melos-code) to speed up command execution.

### Commands

| Command | Description |
| - | - |
analyze | Run `flutter analyze` in all packages.
format | Run `flutter format` in all packages.
get | Run `flutter pub get` in all packages.
test | Run unit and widget tests in all packages.
build | Run `build_runner` build command in all packages that has a dependency on `build_runner`.

> Run `melos <command>` to execute the command
