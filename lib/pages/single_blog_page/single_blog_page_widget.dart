import '/components/blog_content/blog_content_widget.dart';
import '/components/breadcrumps/breadcrumps_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
import '/components/headerfordesktop/headerfordesktop_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'single_blog_page_model.dart';
export 'single_blog_page_model.dart';

class SingleBlogPageWidget extends StatefulWidget {
  const SingleBlogPageWidget({super.key});

  static String routeName = 'singleBlogPage';
  static String routePath = '/singleBlogPage';

  @override
  State<SingleBlogPageWidget> createState() => _SingleBlogPageWidgetState();
}

class _SingleBlogPageWidgetState extends State<SingleBlogPageWidget> {
  late SingleBlogPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleBlogPageModel());
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
              controller: _model.parentBreakpointScrollController,
              child: SingleChildScrollView(
                controller: _model.parentBreakpointScrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                          wrapWithModel(
                            model: _model.breadcrumpsModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BreadcrumpsWidget(
                              categoryName: 'test',
                              type: 'test',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.blogContentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BlogContentWidget(
                              title:
                                  'From Runway to Everyday: How to Style Statement Jewelry Like a Pro',
                              blogDescription:
                                  'Statement jewelry has long been a favorite among fashionistas, celebrities, and style mavens alike, thanks to its ability to add instant glamour and sophistication to any outfit. Whether it’s a bold necklace, a pair of oversized earrings, or a stack of chunky bangles, statement jewelry has the power to elevate even the simplest of looks, turning heads and sparking conversations wherever you go. But while statement jewelry may seem intimidating to some, mastering the art of styling it is easier than you think.\n\nOne of the simplest ways to style statement jewelry is to let it take center stage by keeping the rest of your outfit understated and minimal. For example, pair a chunky statement necklace with a classic white button-down shirt and tailored trousers for a chic and polished look that’s perfect for the office or a night out on the town. Similarly, let a pair of oversized earrings shine by wearing them with a sleek ponytail and a simple black dress, allowing them to add a touch of drama and glamour to your ensemble.\n\nAnother key to styling statement jewelry like a pro is to mix and match different pieces to create a cohesive and harmonious look. Don’t be afraid to experiment with combining different textures, colors, and styles to create a truly unique and eye-catching ensemble. For example, pair a bohemian-inspired statement necklace with a tailored blazer and jeans for an effortlessly chic look that’s perfect for brunch with friends or a day of shopping in the city.\n\nAdditionally, consider the occasion and the vibe you want to convey when choosing statement jewelry for your outfit. For a formal event or a special occasion, opt for bold and dramatic pieces that make a statement and command attention. On the other hand, for a more casual or laid-back look, choose statement jewelry that’s playful and whimsical, adding a touch of fun and personality to your ensemble.\n\nIn conclusion, mastering the art of styling statement jewelry is all about confidence, creativity, and self-expression. Whether you’re dressing up for a night on the town or keeping it casual for a day at the office, statement jewelry has the power to transform your look and make you feel like a million bucks. So don’t be afraid to experiment, mix and match, and let your personality shine through with the jewelry you wear.',
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
                                20.0, 30.0, 20.0, 30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'From Runway to Everyday: How to Style Statement Jewelry Like a Pro',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineLargeIsCustom,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://picsum.photos/seed/319/600',
                                      width: double.infinity,
                                      height: 306.9,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Statement jewelry has long been a favorite among fashionistas, celebrities, and style mavens alike, thanks to its ability to add instant glamour and sophistication to any outfit. Whether it’s a bold necklace, a pair of oversized earrings, or a stack of chunky bangles, statement jewelry has the power to elevate even the simplest of looks, turning heads and sparking conversations wherever you go. But while statement jewelry may seem intimidating to some, mastering the art of styling it is easier than you think.\n\nOne of the simplest ways to style statement jewelry is to let it take center stage by keeping the rest of your outfit understated and minimal. For example, pair a chunky statement necklace with a classic white button-down shirt and tailored trousers for a chic and polished look that’s perfect for the office or a night out on the town. Similarly, let a pair of oversized earrings shine by wearing them with a sleek ponytail and a simple black dress, allowing them to add a touch of drama and glamour to your ensemble.\n\nAnother key to styling statement jewelry like a pro is to mix and match different pieces to create a cohesive and harmonious look. Don’t be afraid to experiment with combining different textures, colors, and styles to create a truly unique and eye-catching ensemble. For example, pair a bohemian-inspired statement necklace with a tailored blazer and jeans for an effortlessly chic look that’s perfect for brunch with friends or a day of shopping in the city.\n\nAdditionally, consider the occasion and the vibe you want to convey when choosing statement jewelry for your outfit. For a formal event or a special occasion, opt for bold and dramatic pieces that make a statement and command attention. On the other hand, for a more casual or laid-back look, choose statement jewelry that’s playful and whimsical, adding a touch of fun and personality to your ensemble.\n\nIn conclusion, mastering the art of styling statement jewelry is all about confidence, creativity, and self-expression. Whether you’re dressing up for a night on the town or keeping it casual for a day at the office, statement jewelry has the power to transform your look and make you feel like a million bucks. So don’t be afraid to experiment, mix and match, and let your personality shine through with the jewelry you wear.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
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
