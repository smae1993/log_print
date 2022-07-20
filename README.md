# log_print

A Flutter package for all platforms which manages console printing for debug and release and printing colorful in editor console

## important

We can not undrestand that your console supports colorful printing or not. so you should set colorful to false in LogPrintConfig if your console not supporting colorful printing.

## Screenshots

<img src="https://github.com/smae1993/log_print/raw/master/screenShots/screen_shot_1.png" height="144em" width="500em" />

## Usage

[Example](https://github.com/smae1993/log_print/blob/master/example/lib/main.dart)

To use this package :

* add the dependency to your [pubspec.yaml](https://github.com/smae1993/log_print/blob/master/pubspec.yaml) file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    log_print: latest version
```

### How to use

```dart
void main() {
  setLogPrintConfig(LogPrintConfig(colorful: true, debugMode: true));

  LogPrint("This is Success Message", type: LogPrintType.success);
  LogPrint("This is Error Message", type: LogPrintType.error);
  LogPrint("This is Warning Message", type: LogPrintType.warning);
  LogPrint("This is Info Message", type: LogPrintType.info);
  LogPrint("This is Custom Message",
      type: LogPrintType.custom,
      title: "Custom Title",
      titleBackgroundColor: Colors.purple,
      messageColor: Colors.cyanAccent);

  runApp(const MyApp());
}

```

# License
Copyright (c) 2020 Sayed Mohammad Amin Emrani

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).