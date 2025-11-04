import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dropdown_anklets_model.dart';
export 'dropdown_anklets_model.dart';

class DropdownAnkletsWidget extends StatefulWidget {
  const DropdownAnkletsWidget({
    super.key,
    required this.draopdown,
    required this.subcategorieslist,
  });

  final bool? draopdown;
  final SubcategoriesListStruct? subcategorieslist;

  @override
  State<DropdownAnkletsWidget> createState() => _DropdownAnkletsWidgetState();
}

class _DropdownAnkletsWidgetState extends State<DropdownAnkletsWidget> {
  late DropdownAnkletsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownAnkletsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 817.8,
        height: 481.13,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 12.0),
            child: Builder(
              builder: (context) {
                final subcat =
                    widget.subcategorieslist?.subcategories.toList() ?? [];

                return ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: true,
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.unknown,
                    },
                  ),
                  child: Scrollbar(
                      child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: subcat.length,
                    itemBuilder: (context, subcatIndex) {
                      final subcatItem = subcat[subcatIndex];
                      return Text(
                        subcatItem.name,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      );
                    },
                  )),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
