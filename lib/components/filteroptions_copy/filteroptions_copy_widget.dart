import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filteroptions_copy_model.dart';
export 'filteroptions_copy_model.dart';

class FilteroptionsCopyWidget extends StatefulWidget {
  const FilteroptionsCopyWidget({
    super.key,
    this.subcategoryvalues,
  });

  final SinglesubcategoryStruct? subcategoryvalues;

  @override
  State<FilteroptionsCopyWidget> createState() =>
      _FilteroptionsCopyWidgetState();
}

class _FilteroptionsCopyWidgetState extends State<FilteroptionsCopyWidget> {
  late FilteroptionsCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilteroptionsCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              value: _model.checkboxValue ??= false,
              onChanged: (newValue) async {
                safeSetState(() => _model.checkboxValue = newValue!);
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
