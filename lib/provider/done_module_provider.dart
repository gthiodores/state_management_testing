import 'package:flutter/foundation.dart';

class DoneModuleProvider extends ChangeNotifier {
  final List<String> _doneModuleList = [];

  List<String> get doneModuleList => _doneModuleList;

  void completeModule(String moduleName) {
    _doneModuleList.add(moduleName);
    notifyListeners();
  }
}
