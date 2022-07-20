import 'package:flutter/material.dart';
import 'package:log_print/log_print.dart';
import 'package:log_print/log_print_config.dart';

void main() {
  /// optional Configuration Of LogPrint
  /// default = (colorful: true, debugMode: true)
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
