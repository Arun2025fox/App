import '/components/breadcrumps/breadcrumps_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
import '/components/headerfordesktop/headerfordesktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'terms_and_conditions_widget.dart' show TermsAndConditionsWidget;
import 'package:flutter/material.dart';

class TermsAndConditionsModel
    extends FlutterFlowModel<TermsAndConditionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for parent widget.
  ScrollController? parentScrollController;
  // Model for headerfordesktop component.
  late HeaderfordesktopModel headerfordesktopModel;
  // Model for breadcrumps component.
  late BreadcrumpsModel breadcrumpsModel;
  // Model for footerDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for footerForMobile component.
  late FooterForMobileModel footerForMobileModel;

  @override
  void initState(BuildContext context) {
    parentScrollController = ScrollController();
    headerfordesktopModel = createModel(context, () => HeaderfordesktopModel());
    breadcrumpsModel = createModel(context, () => BreadcrumpsModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    footerForMobileModel = createModel(context, () => FooterForMobileModel());
  }

  @override
  void dispose() {
    parentScrollController?.dispose();
    headerfordesktopModel.dispose();
    breadcrumpsModel.dispose();
    footerDesktopModel.dispose();
    footerForMobileModel.dispose();
  }
}
