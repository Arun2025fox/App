import '/components/filterbydropdown_widget.dart';
import '/components/itemcards_widget.dart';
import '/components/productscategory_copy_widget.dart';
import '/components/productscategory_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode1;
  TextEditingController? searchbarTextController1;
  String? Function(BuildContext, String?)? searchbarTextController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for productscategory component.
  late ProductscategoryModel productscategoryModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Model for filterbydropdown component.
  late FilterbydropdownModel filterbydropdownModel;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel1;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode2;
  TextEditingController? searchbarTextController2;
  String? Function(BuildContext, String?)? searchbarTextController2Validator;
  // Model for productscategoryCopy component.
  late ProductscategoryCopyModel productscategoryCopyModel;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    productscategoryModel = createModel(context, () => ProductscategoryModel());
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModel1 = createModel(context, () => ItemcardsModel());
    productscategoryCopyModel =
        createModel(context, () => ProductscategoryCopyModel());
    itemcardsModel2 = createModel(context, () => ItemcardsModel());
  }

  @override
  void dispose() {
    searchbarFocusNode1?.dispose();
    searchbarTextController1?.dispose();

    productscategoryModel.dispose();
    filterbydropdownModel.dispose();
    itemcardsModel1.dispose();
    searchbarFocusNode2?.dispose();
    searchbarTextController2?.dispose();

    productscategoryCopyModel.dispose();
    itemcardsModel2.dispose();
  }
}
