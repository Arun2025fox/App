import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/filteroptions/filteroptions_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'filter_bar_model.dart';
export 'filter_bar_model.dart';

class FilterBarWidget extends StatefulWidget {
  const FilterBarWidget({
    super.key,
    this.categoriesList,
    required this.filterComponentCallback,
  });

  final List<SinglecategoryStruct>? categoriesList;
  final Future Function(List<ProductStruct> filteredListfromComponent)?
      filterComponentCallback;

  @override
  State<FilterBarWidget> createState() => _FilterBarWidgetState();
}

class _FilterBarWidgetState extends State<FilterBarWidget> {
  late FilterBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
      child: Container(
        width: 335.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).tertiary,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Filters',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleLargeIsCustom,
                            ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('clearallbtn pressed ...');
                      },
                      text: 'Clear All',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).alternate,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: GetCategoriesCall.call(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final filterSubfiltersGetCategoriesResponse =
                          snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final categoriesfilter =
                              widget.categoriesList?.toList() ?? [];

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: categoriesfilter.length,
                            itemBuilder: (context, categoriesfilterIndex) {
                              final categoriesfilterItem =
                                  categoriesfilter[categoriesfilterIndex];
                              return Container(
                                width: double.infinity,
                                color: Color(0x00000000),
                                child: ExpandableNotifier(
                                  initialExpanded: false,
                                  child: ExpandablePanel(
                                    header: Text(
                                      key: ValueKey(categoriesfilterItem
                                          .categoryId
                                          .toString()),
                                      valueOrDefault<String>(
                                        categoriesfilterItem.categoryName,
                                        'Test',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleLargeIsCustom,
                                          ),
                                    ),
                                    collapsed: Container(),
                                    expanded: Builder(
                                      builder: (context) {
                                        final subcategoryfilter =
                                            categoriesfilterItem.subcategories
                                                .toList();

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              subcategoryfilter.length,
                                              (subcategoryfilterIndex) {
                                            final subcategoryfilterItem =
                                                subcategoryfilter[
                                                    subcategoryfilterIndex];
                                            return wrapWithModel(
                                              model: _model.filteroptionsModels
                                                  .getModel(
                                                subcategoryfilterItem
                                                    .subcategoryId
                                                    .toString(),
                                                subcategoryfilterIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              updateOnChange: true,
                                              child: FilteroptionsWidget(
                                                key: Key(
                                                  'Keyjrg_${subcategoryfilterItem.subcategoryId.toString()}',
                                                ),
                                                subcategoryvalues:
                                                    subcategoryfilterItem,
                                                onFilterChange:
                                                    (currentlyselectedsbcategory,
                                                        checked) async {
                                                  if (checked) {
                                                    FFAppState()
                                                        .addToSelectedSubCategoriesHomeApplevel(
                                                            currentlyselectedsbcategory!);
                                                    safeSetState(() {});
                                                  } else {
                                                    FFAppState()
                                                        .removeFromSelectedSubCategoriesHomeApplevel(
                                                            currentlyselectedsbcategory!);
                                                    safeSetState(() {});
                                                  }

                                                  _model.filteredList =
                                                      await actions
                                                          .filterProductsBySubcategories(
                                                    FFAppState()
                                                        .AllProductsListAppState,
                                                    FFAppState()
                                                        .selectedSubCategoriesHomeApplevel
                                                        .toList(),
                                                  );
                                                  await widget
                                                      .filterComponentCallback
                                                      ?.call(
                                                    _model.filteredList!,
                                                  );

                                                  safeSetState(() {});
                                                },
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Filter by price',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleLargeIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 73.3,
                        height: 31.7,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '700',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 100.0,
                      child: custom_widgets.RangeSliderCustom(
                        width: 150.0,
                        height: 100.0,
                        minValue: 100.0,
                        maxValue: 5000.0,
                        initialStartValue: 100.0,
                        initialEndValue: 200.0,
                        divisions: 10,
                        onRangeChanged: (startValue, endValue) async {},
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 73.3,
                        height: 31.7,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '1000',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 10.0),
                      child: Text(
                        'Product status',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue1 ??= false,
                          onChanged: (newValue) async {
                            safeSetState(
                                () => _model.checkboxValue1 = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).alternate,
                          checkColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      Text(
                        'In Stock',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 5.0))
                        .addToStart(SizedBox(width: 12.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue2 ??= false,
                          onChanged: (newValue) async {
                            safeSetState(
                                () => _model.checkboxValue2 = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).alternate,
                          checkColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      Text(
                        'Out of Stock',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 5.0))
                        .addToStart(SizedBox(width: 12.0)),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 5.0)),
          ),
        ),
      ),
    );
  }
}
