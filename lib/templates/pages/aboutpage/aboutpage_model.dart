import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'aboutpage_widget.dart' show AboutpageWidget;
import 'package:flutter/material.dart';

class AboutpageModel extends FlutterFlowModel<AboutpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? Function(BuildContext, String?)? searchbarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();
  }
}
