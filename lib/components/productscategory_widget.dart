import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'productscategory_model.dart';
export 'productscategory_model.dart';

class ProductscategoryWidget extends StatefulWidget {
  const ProductscategoryWidget({super.key});

  @override
  State<ProductscategoryWidget> createState() => _ProductscategoryWidgetState();
}

class _ProductscategoryWidgetState extends State<ProductscategoryWidget> {
  late ProductscategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductscategoryModel());
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
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
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
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                ),
          ),
        ].divide(SizedBox(height: 10.0)),
      ),
    );
  }
}
