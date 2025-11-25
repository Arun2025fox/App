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
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'contact_us_model.dart';
export 'contact_us_model.dart';

class ContactUsWidget extends StatefulWidget {
  const ContactUsWidget({super.key});

  static String routeName = 'ContactUs';
  static String routePath = '/contactUs';

  @override
  State<ContactUsWidget> createState() => _ContactUsWidgetState();
}

class _ContactUsWidgetState extends State<ContactUsWidget> {
  late ContactUsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactUsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  'Page Title',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: !FlutterFlowTheme.of(context)
                            .headlineMediumIsCustom,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown,
              },
            ),
            child: Scrollbar(
              controller: _model.parentScrollController,
              child: SingleChildScrollView(
                controller: _model.parentScrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          wrapWithModel(
                            model: _model.headerfordesktopModel,
                            updateCallback: () => safeSetState(() {}),
                            child: HeaderfordesktopWidget(),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Contact us',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .displaySmallIsCustom,
                                      ),
                                ),
                                Text(
                                  'Get in touch with us ',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displayMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .displayMediumIsCustom,
                                      ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                120.0, 30.0, 60.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 488.8,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.signupUsernameModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SignupUsernameWidget(
                                          title: 'Name',
                                          hintText: 'Enter your name',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.signupEmailModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SignupEmailWidget(
                                          title: 'Email',
                                          hinttext: 'Enter your email',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.messageModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: MessageWidget(
                                          title: 'Message',
                                          hintText: 'Enter your message',
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor4,
                                            ),
                                            child: Checkbox(
                                              value: _model
                                                      .rememberMeCheckBoxValue1 ??=
                                                  false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                        .rememberMeCheckBoxValue1 =
                                                    newValue!);
                                              },
                                              side:
                                                  (FlutterFlowTheme.of(context)
                                                              .customColor4 !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor4,
                                                        )
                                                      : null,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'I agree to ',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      'privacy policy & terms',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed:
                                              (_model.rememberMeCheckBoxValue1 ==
                                                      false)
                                                  ? null
                                                  : () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                          text: 'Submit',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.onlyIconsModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: OnlyIconsWidget(
                                                    icons: Icon(
                                                      Icons.phone,
                                                      size: 30.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '+91 7010041418',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.onlyIconsModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: OnlyIconsWidget(
                                                    icons: Icon(
                                                      Icons.mail,
                                                      size: 30.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'rajashree03690@gmail.com',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ].divide(SizedBox(width: 25.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 80.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  'Support Categories',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Questions about delivery or tracking? We’ve got you.',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Refund delayed? Contact us to check the status.',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Need a different size or item? We can arrange it.',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Want to request a refund? We’ll guide you through.',
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 20.0)),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.titleModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: NameWidget(
                                                    title: 'Address',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.addressModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ParagraphWidget(
                                                    paragraphTitle:
                                                        'Rajashree Fashion\nDhanalakshmi Nagar, Porur,\nAlambakkam, Chennai - 600116',
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await launchURL(
                                                              'https://api.whatsapp.com/send/?phone=917010041418&text&type=phone_number&app_absent=0');
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .whatsappModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              OnlyIconsWidget(
                                                            icons: FaIcon(
                                                              FontAwesomeIcons
                                                                  .whatsapp,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await launchURL(
                                                              'https://www.instagram.com/rajashree__fashion/');
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .instagramModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              OnlyIconsWidget(
                                                            icons: FaIcon(
                                                              FontAwesomeIcons
                                                                  .instagram,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await launchURL(
                                                              'https://www.youtube.com/@RajashreeFashion');
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .youtubeModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              OnlyIconsWidget(
                                                            icons: FaIcon(
                                                              FontAwesomeIcons
                                                                  .youtube,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 15.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 25.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 60.0)),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.footerDesktopModel,
                            updateCallback: () => safeSetState(() {}),
                            child: FooterDesktopWidget(),
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 20.0, 25.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Contact us',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineSmallIsCustom,
                                            ),
                                      ),
                                      Text(
                                        'Get in touch with us ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .displayMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .displayMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .displayMediumIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ),
                                Container(
                                  width: 519.2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.signupUsernameModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SignupUsernameWidget(
                                          title: 'Name',
                                          hintText: 'Enter your name',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.signupEmailModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SignupEmailWidget(
                                          title: 'Email',
                                          hinttext: 'Enter your email',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.messageModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: MessageWidget(
                                          title: 'Message',
                                          hintText: 'Enter your message',
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor4,
                                            ),
                                            child: Checkbox(
                                              value: _model
                                                      .rememberMeCheckBoxValue2 ??=
                                                  false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                        .rememberMeCheckBoxValue2 =
                                                    newValue!);
                                              },
                                              side:
                                                  (FlutterFlowTheme.of(context)
                                                              .customColor4 !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor4,
                                                        )
                                                      : null,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'I agree to ',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      'privacy policy & terms',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed:
                                              (_model.rememberMeCheckBoxValue2 ==
                                                      false)
                                                  ? null
                                                  : () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                          text: 'Submit',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 80.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  'Support Categories',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Questions about delivery or tracking? We’ve got you.',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Refund delayed? Contact us to check the status.',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Need a different size or item? We can arrange it.',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .pointsForContactModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: PointsForContactWidget(
                                                  pointParagraph:
                                                      'Want to request a refund? We’ll guide you through.',
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 20.0)),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              wrapWithModel(
                                                model: _model.titleModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: NameWidget(
                                                  title: 'Address',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.addressModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ParagraphWidget(
                                                  paragraphTitle:
                                                      'Rajashree Fashion\nDhanalakshmi Nagar, Porur,\nAlambakkam, Chennai - 600116',
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .onlyIconsModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              OnlyIconsWidget(
                                                            icons: Icon(
                                                              Icons.phone,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          '+91 7010041418',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLargeIsCustom,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .onlyIconsModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              OnlyIconsWidget(
                                                            icons: Icon(
                                                              Icons.mail,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'rajashree03690@gmail.com',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLargeIsCustom,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 15.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 30.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    wrapWithModel(
                                                      model:
                                                          _model.whatsappModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: OnlyIconsWidget(
                                                        icons: FaIcon(
                                                          FontAwesomeIcons
                                                              .whatsapp,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .instagramModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: OnlyIconsWidget(
                                                        icons: FaIcon(
                                                          FontAwesomeIcons
                                                              .instagram,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model:
                                                          _model.youtubeModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: OnlyIconsWidget(
                                                        icons: FaIcon(
                                                          FontAwesomeIcons
                                                              .youtube,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 15.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 25.0)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 15.0)),
                            ),
                          ),
                          Container(
                            child: wrapWithModel(
                              model: _model.footerForMobileModel,
                              updateCallback: () => safeSetState(() {}),
                              child: FooterForMobileWidget(),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
