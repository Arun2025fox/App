import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
import '/components/headerfordesktop/headerfordesktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aboutpage_widget.dart' show AboutpageWidget;
import 'package:flutter/material.dart';

class AboutpageModel extends FlutterFlowModel<AboutpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for headerfordesktop component.
  late HeaderfordesktopModel headerfordesktopModel;
  // Model for footerDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for footerForMobile component.
  late FooterForMobileModel footerForMobileModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    headerfordesktopModel = createModel(context, () => HeaderfordesktopModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    footerForMobileModel = createModel(context, () => FooterForMobileModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    headerfordesktopModel.dispose();
    footerDesktopModel.dispose();
    footerForMobileModel.dispose();
  }
}
