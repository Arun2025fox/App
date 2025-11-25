// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart'; //

class RangeSliderCustom extends StatefulWidget {
  const RangeSliderCustom({
    Key? key,
    this.width,
    this.height,
    required this.minValue,
    required this.maxValue,
    required this.initialStartValue,
    required this.initialEndValue,
    this.divisions,
    this.onRangeChanged,
    this.fontColor,
    this.activeTrackColor,
    this.inactiveTrackColor,
    this.thumbColor, // This parameter is still useful for passing the color from FF builder
  }) : super(key: key);

  final double? width;
  final double? height;
  final double minValue;
  final double maxValue;
  final double initialStartValue;
  final double initialEndValue;
  final int? divisions;
  final Future<dynamic> Function(double startValue, double endValue)?
      onRangeChanged;
  final Color? fontColor;
  final Color? activeTrackColor;
  final Color? inactiveTrackColor;
  final Color? thumbColor; // Custom parameter

  @override
  _RangeSliderCustomState createState() => _RangeSliderCustomState();
}

class _RangeSliderCustomState extends State<RangeSliderCustom> {
  late RangeValues _currentRangeValues;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues(
      widget.initialStartValue.clamp(widget.minValue, widget.maxValue),
      widget.initialEndValue.clamp(widget.minValue, widget.maxValue),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_currentRangeValues.start > _currentRangeValues.end) {
      _currentRangeValues =
          RangeValues(_currentRangeValues.end, _currentRangeValues.start);
    }

    // Determine default colors if not provided
    final Color defaultActiveColor =
        widget.activeTrackColor ?? FlutterFlowTheme.of(context).primary;
    final Color defaultInactiveColor =
        widget.inactiveTrackColor ?? FlutterFlowTheme.of(context).alternate;
    final Color defaultThumbColor =
        widget.thumbColor ?? FlutterFlowTheme.of(context).primary;

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 60.0,
      // Wrap the RangeSlider with SliderTheme
      child: SliderTheme(
        data: SliderThemeData(
          rangeThumbShape: const RoundRangeSliderThumbShape(), // Default shape
          thumbColor: defaultThumbColor, // Apply thumbColor here
          activeTrackColor: defaultActiveColor, // Ensure consistency
          inactiveTrackColor: defaultInactiveColor, // Ensure consistency
          // You can customize other properties like overlayColor, valueIndicatorColor, etc.
          // For labels:
          showValueIndicator: ShowValueIndicator.always, // Always show labels
          valueIndicatorTextStyle: GoogleFonts.getFont(
            FlutterFlowTheme.of(context).bodyMedium.fontFamily ??
                'Roboto', // Use theme's font, fallback to 'Roboto'
            color: widget.fontColor ?? FlutterFlowTheme.of(context).info,
            fontSize: 12, // Adjust font size as needed
          ),
        ),
        child: RangeSlider(
          values: _currentRangeValues,
          min: widget.minValue,
          max: widget.maxValue,
          divisions: widget.divisions,
          // Labels now use _currentRangeValues for dynamic display
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          // activeColor, inactiveColor, thumbColor are now set via SliderThemeData
          // So, remove them from RangeSlider directly to avoid conflicts or undefined parameters
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
            if (widget.onRangeChanged != null) {
              widget.onRangeChanged!(values.start, values.end);
            }
          },
        ),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
