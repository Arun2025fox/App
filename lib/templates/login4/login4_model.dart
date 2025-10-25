import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login4_widget.dart' show Login4Widget;
import 'package:flutter/material.dart';

class Login4Model extends FlutterFlowModel<Login4Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for scrollingContainer widget.
  ScrollController? scrollingContainerScrollController;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    scrollingContainerScrollController = ScrollController();
    passwordVisibility = false;
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    scrollingContainerScrollController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    buttonModel.dispose();
  }
}
