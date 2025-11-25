import '/backend/schema/structs/index.dart';
import '/components/filteroptions/filteroptions_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filter_bar_widget.dart' show FilterBarWidget;
import 'package:flutter/material.dart';

class FilterBarModel extends FlutterFlowModel<FilterBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for filteroptions dynamic component.
  late FlutterFlowDynamicModels<FilteroptionsModel> filteroptionsModels;
  // Stores action output result for [Custom Action - filterProductsBySubcategories] action in filteroptions widget.
  List<ProductStruct>? filteredList;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

  @override
  void initState(BuildContext context) {
    filteroptionsModels = FlutterFlowDynamicModels(() => FilteroptionsModel());
  }

  @override
  void dispose() {
    filteroptionsModels.dispose();
  }
}
