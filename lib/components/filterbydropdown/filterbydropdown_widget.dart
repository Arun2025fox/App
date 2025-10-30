import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'filterbydropdown_model.dart';
export 'filterbydropdown_model.dart';

class FilterbydropdownWidget extends StatefulWidget {
  const FilterbydropdownWidget({super.key});

  @override
  State<FilterbydropdownWidget> createState() => _FilterbydropdownWidgetState();
}

class _FilterbydropdownWidgetState extends State<FilterbydropdownWidget> {
  late FilterbydropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterbydropdownModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FlutterFlowDropDown<String>(
        controller: _model.dropDownValueController ??=
            FormFieldController<String>(
          _model.dropDownValue ??= 'Relevance',
        ),
        options: List<String>.from([
          'Relevance',
          'New Arrivals',
          'Price (High to Low)',
          'Price (Low to High)',
          'Today\'s Offer'
        ]),
        optionLabels: [
          'Relevance',
          'New Arrivals',
          'Price (High to Low)',
          'Price (Low to High)',
          'Discount'
        ],
        onChanged: (val) => safeSetState(() => _model.dropDownValue = val),
        width: 200.0,
        height: 40.0,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              letterSpacing: 0.0,
              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
            ),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).customColor1,
          size: 24.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 2.0,
        borderColor: Colors.transparent,
        borderWidth: 0.0,
        borderRadius: 8.0,
        margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        hidesUnderline: true,
        isOverButton: false,
        isSearchable: false,
        isMultiSelect: false,
      ),
    );
  }
}
