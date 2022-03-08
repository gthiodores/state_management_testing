import 'package:flutter/material.dart';
import 'package:state_management_testing/done_module_list.dart';

import 'module_list.dart';

class ModulePage extends StatelessWidget {
  const ModulePage({Key? key}) : super(key: key);

  void _onDoneIconPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const DoneModuleList();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: [
          IconButton(
            onPressed: () {
              _onDoneIconPressed(context);
            },
            icon: const Icon(Icons.done),
          )
        ],
      ),
      body: ModuleList(),
    );
  }
}
