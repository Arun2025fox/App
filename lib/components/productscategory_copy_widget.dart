import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'productscategory_copy_model.dart';
export 'productscategory_copy_model.dart';

class ProductscategoryCopyWidget extends StatefulWidget {
  const ProductscategoryCopyWidget({super.key});

  @override
  State<ProductscategoryCopyWidget> createState() =>
      _ProductscategoryCopyWidgetState();
}

class _ProductscategoryCopyWidgetState
    extends State<ProductscategoryCopyWidget> {
  late ProductscategoryCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductscategoryCopyModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/179/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            'Hello World',
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
          ),
        ].divide(SizedBox(height: 10.0)),
      ),
    );
  }
}
