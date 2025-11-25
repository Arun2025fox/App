import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'only_icons_model.dart';
export 'only_icons_model.dart';

class OnlyIconsWidget extends StatefulWidget {
  const OnlyIconsWidget({
    super.key,
    this.icons,
  });

  final Widget? icons;

  @override
  State<OnlyIconsWidget> createState() => _OnlyIconsWidgetState();
}

class _OnlyIconsWidgetState extends State<OnlyIconsWidget> {
  late OnlyIconsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnlyIconsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.icons!;
  }
}
