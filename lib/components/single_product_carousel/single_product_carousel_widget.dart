import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'single_product_carousel_model.dart';
export 'single_product_carousel_model.dart';

class SingleProductCarouselWidget extends StatefulWidget {
  const SingleProductCarouselWidget({super.key});

  @override
  State<SingleProductCarouselWidget> createState() =>
      _SingleProductCarouselWidgetState();
}

class _SingleProductCarouselWidgetState
    extends State<SingleProductCarouselWidget> {
  late SingleProductCarouselModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleProductCarouselModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 613.6,
      child: CarouselSlider(
        items: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              'https://picsum.photos/seed/607/600',
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              'https://picsum.photos/seed/926/600',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              'https://picsum.photos/seed/361/600',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ],
        carouselController: _model.carouselController ??=
            CarouselSliderController(),
        options: CarouselOptions(
          initialPage: 2,
          viewportFraction: 1.0,
          disableCenter: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.25,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayInterval: Duration(milliseconds: (800 + 4000)),
          autoPlayCurve: Curves.linear,
          pauseAutoPlayInFiniteScroll: true,
          onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
        ),
      ),
    );
  }
}
