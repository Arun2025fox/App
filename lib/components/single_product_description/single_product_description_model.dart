import '/flutter_flow/flutter_flow_util.dart';
import 'single_product_description_widget.dart'
    show SingleProductDescriptionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SingleProductDescriptionModel
    extends FlutterFlowModel<SingleProductDescriptionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
