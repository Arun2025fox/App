import '/flutter_flow/flutter_flow_util.dart';
import 'headerfordesktop_widget.dart' show HeaderfordesktopWidget;
import 'package:flutter/material.dart';

class HeaderfordesktopModel extends FlutterFlowModel<HeaderfordesktopWidget> {
  ///  State fields for stateful widgets in this component.

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
