import '/flutter_flow/flutter_flow_util.dart';
import 'single_product_shipping_widget.dart' show SingleProductShippingWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SingleProductShippingModel
    extends FlutterFlowModel<SingleProductShippingWidget> {
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
