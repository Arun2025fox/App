import '/components/blog_content/blog_content_widget.dart';
import '/components/breadcrumps/breadcrumps_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
import '/components/headerfordesktop/headerfordesktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'single_blog_page_widget.dart' show SingleBlogPageWidget;
import 'package:flutter/material.dart';

class SingleBlogPageModel extends FlutterFlowModel<SingleBlogPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for parent-breakpoint widget.
  ScrollController? parentBreakpointScrollController;
  // Model for headerfordesktop component.
  late HeaderfordesktopModel headerfordesktopModel;
  // Model for breadcrumps component.
  late BreadcrumpsModel breadcrumpsModel;
  // Model for blogContent component.
  late BlogContentModel blogContentModel;
  // Model for footerDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for footerForMobile component.
  late FooterForMobileModel footerForMobileModel;

  @override
  void initState(BuildContext context) {
    parentBreakpointScrollController = ScrollController();
    headerfordesktopModel = createModel(context, () => HeaderfordesktopModel());
    breadcrumpsModel = createModel(context, () => BreadcrumpsModel());
    blogContentModel = createModel(context, () => BlogContentModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    footerForMobileModel = createModel(context, () => FooterForMobileModel());
  }

  @override
  void dispose() {
    parentBreakpointScrollController?.dispose();
    headerfordesktopModel.dispose();
    breadcrumpsModel.dispose();
    blogContentModel.dispose();
    footerDesktopModel.dispose();
    footerForMobileModel.dispose();
  }
}
