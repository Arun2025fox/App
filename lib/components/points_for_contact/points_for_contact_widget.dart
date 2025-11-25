import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'points_for_contact_model.dart';
export 'points_for_contact_model.dart';

class PointsForContactWidget extends StatefulWidget {
  const PointsForContactWidget({
    super.key,
    this.pointParagraph,
  });

  final String? pointParagraph;

  @override
  State<PointsForContactWidget> createState() => _PointsForContactWidgetState();
}

class _PointsForContactWidgetState extends State<PointsForContactWidget> {
  late PointsForContactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PointsForContactModel());
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
        Icon(
          Icons.check_circle,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 24.0,
        ),
        Flexible(
          child: Text(
            valueOrDefault<String>(
              widget.pointParagraph,
              'paragraph',
            ),
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                ),
          ),
        ),
      ].divide(SizedBox(width: 10.0)),
    );
  }
}
