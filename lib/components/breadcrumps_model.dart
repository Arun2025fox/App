import '/flutter_flow/flutter_flow_util.dart';
import 'breadcrumps_widget.dart' show BreadcrumpsWidget;
import 'package:flutter/material.dart';

class BreadcrumpsModel extends FlutterFlowModel<BreadcrumpsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for breadcrumps widget.
  ScrollController? breadcrumpsScrollController;

  @override
  void initState(BuildContext context) {
    breadcrumpsScrollController = ScrollController();
  }

  @override
  void dispose() {
    breadcrumpsScrollController?.dispose();
  }
}
