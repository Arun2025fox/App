import '/flutter_flow/flutter_flow_util.dart';
import 'signup_email_widget.dart' show SignupEmailWidget;
import 'package:flutter/material.dart';

class SignupEmailModel extends FlutterFlowModel<SignupEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
