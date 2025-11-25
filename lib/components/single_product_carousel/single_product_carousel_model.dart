import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'single_product_carousel_widget.dart' show SingleProductCarouselWidget;
import 'package:flutter/material.dart';

class SingleProductCarouselModel
    extends FlutterFlowModel<SingleProductCarouselWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
