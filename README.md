# UIScale

![Flutter](https://img.shields.io/badge/Flutter-2.0+-blue.svg)
![Pub Version](https://img.shields.io/pub/v/uiscale)
![License](https://img.shields.io/badge/License-BSD-green.svg)

**UIScale** is a versatile utility class for Flutter applications that simplifies the process of creating responsive user interfaces (UIs). It provides the tools you need to adapt your UI elements based on the characteristics of the device's screen, making it easier to maintain a consistent user experience across a variety of devices and screen sizes.

**Installation**: Add `uiscale` to your `pubspec.yaml` file under `dependencies`:

```yaml
dependencies:
   uiscale: ^1.0.0  # Replace with the latest version
```

## Getting Started

1. Import the `uiscale` package into your Flutter project:

```dart
import 'package:uiscale/uiscale.dart';
```

2. Initialize UIScale during your app's initialization:
   
> :warning: Ensure that the init method is called during the application initialization phase to correctly configure UIScale.

```dart
UIScale.init(context);
```

3. Use `UIScale` methods to scale your UI components based on device characteristics.

```dart
// Scale the width of a container to 50% of the device's width
final double containerWidth = UIScale.width(50);

// Scale the height of an image to 30% of the device's height
final double imageHeight = UIScale.height(30);
```
