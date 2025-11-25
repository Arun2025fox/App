import '/flutter_flow/flutter_flow_util.dart';
import 'product5_shoe_details_widget.dart' show Product5ShoeDetailsWidget;
import 'package:flutter/material.dart';

class Product5ShoeDetailsModel
    extends FlutterFlowModel<Product5ShoeDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
  }
}
