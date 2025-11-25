import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
import '/components/headerfordesktop/headerfordesktop_widget.dart';
import '/components/message/message_widget.dart';
import '/components/name/name_widget.dart';
import '/components/only_icons/only_icons_widget.dart';
import '/components/paragraph/paragraph_widget.dart';
import '/components/points_for_contact/points_for_contact_widget.dart';
import '/components/signup_email/signup_email_widget.dart';
import '/components/signup_username/signup_username_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_us_widget.dart' show ContactUsWidget;
import 'package:flutter/material.dart';

class ContactUsModel extends FlutterFlowModel<ContactUsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Parent widget.
  ScrollController? parentScrollController;
  // Model for headerfordesktop component.
  late HeaderfordesktopModel headerfordesktopModel;
  // Model for signup_username component.
  late SignupUsernameModel signupUsernameModel1;
  // Model for signup_email component.
  late SignupEmailModel signupEmailModel1;
  // Model for message component.
  late MessageModel messageModel1;
  // State field(s) for rememberMeCheckBox widget.
  bool? rememberMeCheckBoxValue1;
  // Model for onlyIcons component.
  late OnlyIconsModel onlyIconsModel1;
  // Model for onlyIcons component.
  late OnlyIconsModel onlyIconsModel2;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel1;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel2;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel3;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel4;
  // Model for title.
  late NameModel titleModel1;
  // Model for address.
  late ParagraphModel addressModel1;
  // Model for whatsapp.
  late OnlyIconsModel whatsappModel1;
  // Model for instagram.
  late OnlyIconsModel instagramModel1;
  // Model for youtube.
  late OnlyIconsModel youtubeModel1;
  // Model for footerDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // Model for signup_username component.
  late SignupUsernameModel signupUsernameModel2;
  // Model for signup_email component.
  late SignupEmailModel signupEmailModel2;
  // Model for message component.
  late MessageModel messageModel2;
  // State field(s) for rememberMeCheckBox widget.
  bool? rememberMeCheckBoxValue2;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel5;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel6;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel7;
  // Model for pointsForContact component.
  late PointsForContactModel pointsForContactModel8;
  // Model for title.
  late NameModel titleModel2;
  // Model for address.
  late ParagraphModel addressModel2;
  // Model for onlyIcons component.
  late OnlyIconsModel onlyIconsModel3;
  // Model for onlyIcons component.
  late OnlyIconsModel onlyIconsModel4;
  // Model for whatsapp.
  late OnlyIconsModel whatsappModel2;
  // Model for instagram.
  late OnlyIconsModel instagramModel2;
  // Model for youtube.
  late OnlyIconsModel youtubeModel2;
  // Model for footerForMobile component.
  late FooterForMobileModel footerForMobileModel;

  @override
  void initState(BuildContext context) {
    parentScrollController = ScrollController();
    headerfordesktopModel = createModel(context, () => HeaderfordesktopModel());
    signupUsernameModel1 = createModel(context, () => SignupUsernameModel());
    signupEmailModel1 = createModel(context, () => SignupEmailModel());
    messageModel1 = createModel(context, () => MessageModel());
    onlyIconsModel1 = createModel(context, () => OnlyIconsModel());
    onlyIconsModel2 = createModel(context, () => OnlyIconsModel());
    pointsForContactModel1 =
        createModel(context, () => PointsForContactModel());
    pointsForContactModel2 =
        createModel(context, () => PointsForContactModel());
    pointsForContactModel3 =
        createModel(context, () => PointsForContactModel());
    pointsForContactModel4 =
        createModel(context, () => PointsForContactModel());
    titleModel1 = createModel(context, () => NameModel());
    addressModel1 = createModel(context, () => ParagraphModel());
    whatsappModel1 = createModel(context, () => OnlyIconsModel());
    instagramModel1 = createModel(context, () => OnlyIconsModel());
    youtubeModel1 = createModel(context, () => OnlyIconsModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    signupUsernameModel2 = createModel(context, () => SignupUsernameModel());
    signupEmailModel2 = createModel(context, () => SignupEmailModel());
    messageModel2 = createModel(context, () => MessageModel());
    pointsForContactModel5 =
        createModel(context, () => PointsForContactModel());
    pointsForContactModel6 =
        createModel(context, () => PointsForContactModel());
    pointsForContactModel7 =
        createModel(context, () => PointsForContactModel());
    pointsForContactModel8 =
        createModel(context, () => PointsForContactModel());
    titleModel2 = createModel(context, () => NameModel());
    addressModel2 = createModel(context, () => ParagraphModel());
    onlyIconsModel3 = createModel(context, () => OnlyIconsModel());
    onlyIconsModel4 = createModel(context, () => OnlyIconsModel());
    whatsappModel2 = createModel(context, () => OnlyIconsModel());
    instagramModel2 = createModel(context, () => OnlyIconsModel());
    youtubeModel2 = createModel(context, () => OnlyIconsModel());
    footerForMobileModel = createModel(context, () => FooterForMobileModel());
  }

  @override
  void dispose() {
    parentScrollController?.dispose();
    headerfordesktopModel.dispose();
    signupUsernameModel1.dispose();
    signupEmailModel1.dispose();
    messageModel1.dispose();
    onlyIconsModel1.dispose();
    onlyIconsModel2.dispose();
    pointsForContactModel1.dispose();
    pointsForContactModel2.dispose();
    pointsForContactModel3.dispose();
    pointsForContactModel4.dispose();
    titleModel1.dispose();
    addressModel1.dispose();
    whatsappModel1.dispose();
    instagramModel1.dispose();
    youtubeModel1.dispose();
    footerDesktopModel.dispose();
    signupUsernameModel2.dispose();
    signupEmailModel2.dispose();
    messageModel2.dispose();
    pointsForContactModel5.dispose();
    pointsForContactModel6.dispose();
    pointsForContactModel7.dispose();
    pointsForContactModel8.dispose();
    titleModel2.dispose();
    addressModel2.dispose();
    onlyIconsModel3.dispose();
    onlyIconsModel4.dispose();
    whatsappModel2.dispose();
    instagramModel2.dispose();
    youtubeModel2.dispose();
    footerForMobileModel.dispose();
  }
}
