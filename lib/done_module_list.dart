import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_testing/provider/done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> doneList = Provider.of<DoneModuleProvider>(
      context,
      listen: false,
    ).doneModuleList;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Done List"),
      ),
      body: ListView.builder(
        itemCount: doneList.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(doneList[index]));
        },
      ),
    );
  }
}
