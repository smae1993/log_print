library log_print;

import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'package:log_print/log_print_config.dart';

/// static optional config for log print library.
LogPrintConfig logPrintConfig = LogPrintConfig();

/// This class designed for managing console log in debug mode and release mode.
/// it can print colorful in vscode only.
/// android studio not supporting colorful print.
class LogPrint {
  /// determines log print type {success, info, warning, error, custom}
  LogPrintType type;

  /// message that must print in console
  String message;

  /// if type == custom and title has a value, title shows between <>
  String? title;

  /// if type == custom and titleColor has a value, title shows by titleColor
  Color? titleColor;

  /// if type == custom and titleBackgroundColor has a value, title shows by titleBackgroundColor
  Color? titleBackgroundColor;

  /// if messageColor has a value, message shows by messageColor
  Color? messageColor;

  /// if messageBackgroundColor has a value, message shows by messageBackgroundColor
  Color? messageBackgroundColor;

  /// just message is required
  LogPrint(this.message,
      {this.type = LogPrintType.info,
      this.title,
      this.titleColor,
      this.titleBackgroundColor,
      this.messageColor,
      this.messageBackgroundColor}) {
    if (logPrintConfig.debugMode) {
      // ignore: avoid_print
      print("${_titleSection()} ==> ${_messageSection()}");
    }
  }

  /// private function that prepares title section of print
  String _titleSection() {
    AnsiPen pen = AnsiPen()..white();
    if (type == LogPrintType.custom && titleColor != null) {
      pen.rgb(
          r: titleColor!.red / 256,
          g: titleColor!.green / 256,
          b: titleColor!.blue / 256);
    }

    if (type == LogPrintType.custom && titleBackgroundColor != null) {
      pen.rgb(
          r: titleBackgroundColor!.red / 256,
          g: titleBackgroundColor!.green / 256,
          b: titleBackgroundColor!.blue / 256,
          bg: true);
    } else {
      pen.rgb(
          bg: true,
          r: type.color.red / 256,
          g: type.color.green / 256,
          b: type.color.blue / 256);
    }
    if (type == LogPrintType.custom && title != null) {
      return pen("<$title>");
    } else {
      return pen("<${type.name}>");
    }
  }

  /// private function that prepares message section of print
  String _messageSection() {
    AnsiPen pen = AnsiPen()..white();
    if (messageColor != null) {
      pen.rgb(
          r: messageColor!.red / 256,
          g: messageColor!.green / 256,
          b: messageColor!.blue / 256);
    }

    if (messageBackgroundColor != null) {
      pen.rgb(
          r: messageBackgroundColor!.red / 256,
          g: messageBackgroundColor!.green / 256,
          b: messageBackgroundColor!.blue / 256,
          bg: true);
    }
    return pen(message);
  }
}

void setLogPrintConfig(LogPrintConfig config) {
  logPrintConfig = config;
}

enum LogPrintType {
  success(Colors.green),
  info(Colors.blue),
  warning(Colors.orange),
  error(Colors.red),
  custom(Colors.grey);

  const LogPrintType(this.color);
  final Color color;
}
