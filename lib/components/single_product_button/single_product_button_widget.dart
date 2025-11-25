import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'single_product_button_model.dart';
export 'single_product_button_model.dart';

class SingleProductButtonWidget extends StatefulWidget {
  const SingleProductButtonWidget({
    super.key,
    this.buttonText,
    this.buttonColor,
    Color? textcolour,
    this.borderColor,
  }) : this.textcolour = textcolour ?? Colors.black;

  final String? buttonText;
  final Color? buttonColor;
  final Color textcolour;
  final Color? borderColor;

  @override
  State<SingleProductButtonWidget> createState() =>
      _SingleProductButtonWidgetState();
}

class _SingleProductButtonWidgetState extends State<SingleProductButtonWidget> {
  late SingleProductButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleProductButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('buynow pressed ...');
      },
      text: widget.buttonText!,
      options: FFButtonOptions(
        height: 40.0,
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: widget.buttonColor,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
              color: widget.textcolour,
              letterSpacing: 0.0,
              useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: widget.borderColor!,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
