import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'itemcards_model.dart';
export 'itemcards_model.dart';

class ItemcardsWidget extends StatefulWidget {
  const ItemcardsWidget({
    super.key,
    String? name,
    required this.price,
    required this.imageurl,
    required this.ratings,
  }) : this.name = name ?? 'test';

  final String name;
  final double? price;
  final String? imageurl;
  final double? ratings;

  @override
  State<ItemcardsWidget> createState() => _ItemcardsWidgetState();
}

class _ItemcardsWidgetState extends State<ItemcardsWidget> {
  late ItemcardsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemcardsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217.0,
      height: 370.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).tertiary,
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget.imageurl!,
                      width: 205.8,
                      height: 177.85,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      widget.name,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      formatNumber(
                        widget.price,
                        formatType: FormatType.custom,
                        currency: '₹',
                        format: '',
                        locale: '',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                  ),
                ].divide(SizedBox(height: 13.0)),
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Container(
                  width: 63.8,
                  height: 29.8,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.star,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 15.0,
                          ),
                          Text(
                            widget.ratings.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ]
                            .divide(SizedBox(width: 5.0))
                            .addToStart(SizedBox(width: 10.0))
                            .addToEnd(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
