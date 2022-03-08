import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_testing/module_page.dart';
import 'package:state_management_testing/provider/done_module_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ModulePage(),
      ),
    );
  }
}
