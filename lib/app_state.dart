import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _selectedSubCategoriesHomeApplevel = [];
  List<int> get selectedSubCategoriesHomeApplevel =>
      _selectedSubCategoriesHomeApplevel;
  set selectedSubCategoriesHomeApplevel(List<int> value) {
    _selectedSubCategoriesHomeApplevel = value;
  }

  void addToSelectedSubCategoriesHomeApplevel(int value) {
    selectedSubCategoriesHomeApplevel.add(value);
  }

  void removeFromSelectedSubCategoriesHomeApplevel(int value) {
    selectedSubCategoriesHomeApplevel.remove(value);
  }

  void removeAtIndexFromSelectedSubCategoriesHomeApplevel(int index) {
    selectedSubCategoriesHomeApplevel.removeAt(index);
  }

  void updateSelectedSubCategoriesHomeApplevelAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    selectedSubCategoriesHomeApplevel[index] =
        updateFn(_selectedSubCategoriesHomeApplevel[index]);
  }

  void insertAtIndexInSelectedSubCategoriesHomeApplevel(int index, int value) {
    selectedSubCategoriesHomeApplevel.insert(index, value);
  }

  String _selectedSortoption = '';
  String get selectedSortoption => _selectedSortoption;
  set selectedSortoption(String value) {
    _selectedSortoption = value;
  }

  AllProductsStruct _AllProductsListAppState =
      AllProductsStruct.fromSerializableMap(
          jsonDecode('{\"products\":\"[]\"}'));
  AllProductsStruct get AllProductsListAppState => _AllProductsListAppState;
  set AllProductsListAppState(AllProductsStruct value) {
    _AllProductsListAppState = value;
  }

  void updateAllProductsListAppStateStruct(
      Function(AllProductsStruct) updateFn) {
    updateFn(_AllProductsListAppState);
  }
}
