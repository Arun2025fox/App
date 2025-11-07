import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'filteroptions_model.dart';
export 'filteroptions_model.dart';

class FilteroptionsWidget extends StatefulWidget {
  const FilteroptionsWidget({
    super.key,
    this.subcategoryvalues,
    required this.onFilterChange,
  });

  final SinglesubcategoryStruct? subcategoryvalues;
  final Future Function(int? currentlyselectedsbcategory, bool checked)?
      onFilterChange;

  @override
  State<FilteroptionsWidget> createState() => _FilteroptionsWidgetState();
}

class _FilteroptionsWidgetState extends State<FilteroptionsWidget> {
  late FilteroptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilteroptionsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
        ))
          Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
            ),
            child: Checkbox(
              value: _model.checkboxValue ??= FFAppState()
                      .selectedSubCategoriesHomeApplevel
                      .contains(widget.subcategoryvalues?.subcategoryId)
                  ? true
                  : false,
              onChanged: (newValue) async {
                safeSetState(() => _model.checkboxValue = newValue!);
                if (newValue!) {
                  // CollectSubCatsSelected
                  _model.selectedSubCats =
                      widget.subcategoryvalues?.subcategoryId;
                  await widget.onFilterChange?.call(
                    _model.selectedSubCats,
                    true,
                  );
                } else {
                  _model.selectedSubCats =
                      widget.subcategoryvalues?.subcategoryId;
                  safeSetState(() {});
                  await widget.onFilterChange?.call(
                    _model.selectedSubCats,
                    false,
                  );
                }
              },
              side: (FlutterFlowTheme.of(context).alternate != null)
                  ? BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).alternate,
                    )
                  : null,
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        Text(
          valueOrDefault<String>(
            widget.subcategoryvalues?.name,
            'name',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ],
    );
  }
}
