import 'package:ansicolor/ansicolor.dart';

/// this class has log print library configurations
class LogPrintConfig {
  LogPrintConfig({this.debugMode = true, this.colorful = true}) {
    ansiColorDisabled = false;
  }

  /// if enabled prints are colorful
  /// if browser not supporting please turn it to false
  bool colorful;

  /// if enabled prints are displayed but if not enabled prints be hide.
  bool debugMode;
}
