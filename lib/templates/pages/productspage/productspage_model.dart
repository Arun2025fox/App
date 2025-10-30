import '/backend/schema/structs/index.dart';
import '/components/filterbydropdown/filterbydropdown_widget.dart';
import '/components/itemcards/itemcards_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'productspage_widget.dart' show ProductspageWidget;
import 'package:flutter/material.dart';

class ProductspageModel extends FlutterFlowModel<ProductspageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? Function(BuildContext, String?)? searchbarTextControllerValidator;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for Checkbox widget.
  Map<SinglecategoryStruct, bool> checkboxValueMap1 = {};
  List<SinglecategoryStruct> get checkboxCheckedItems1 =>
      checkboxValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Model for filterbydropdown component.
  late FilterbydropdownModel filterbydropdownModel;
  // Models for itemcards dynamic component.
  late FlutterFlowDynamicModels<ItemcardsModel> itemcardsModels;

  @override
  void initState(BuildContext context) {
    rowController = ScrollController();
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModels = FlutterFlowDynamicModels(() => ItemcardsModel());
  }

  @override
  void dispose() {
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();

    rowController?.dispose();
    filterbydropdownModel.dispose();
    itemcardsModels.dispose();
  }
}
