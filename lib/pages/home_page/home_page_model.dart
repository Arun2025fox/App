import '/components/filterbydropdown_widget.dart';
import '/components/itemcards_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? Function(BuildContext, String?)? searchbarTextControllerValidator;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for Checkbox widget.
  bool? checkboxValue11;
  // Model for filterbydropdown component.
  late FilterbydropdownModel filterbydropdownModel;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel1;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel2;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel3;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel4;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel5;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel6;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel7;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel8;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel9;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel10;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel11;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel12;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel13;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel14;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel15;
  // Model for itemcards component.
  late ItemcardsModel itemcardsModel16;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModel1 = createModel(context, () => ItemcardsModel());
    itemcardsModel2 = createModel(context, () => ItemcardsModel());
    itemcardsModel3 = createModel(context, () => ItemcardsModel());
    itemcardsModel4 = createModel(context, () => ItemcardsModel());
    itemcardsModel5 = createModel(context, () => ItemcardsModel());
    itemcardsModel6 = createModel(context, () => ItemcardsModel());
    itemcardsModel7 = createModel(context, () => ItemcardsModel());
    itemcardsModel8 = createModel(context, () => ItemcardsModel());
    itemcardsModel9 = createModel(context, () => ItemcardsModel());
    itemcardsModel10 = createModel(context, () => ItemcardsModel());
    itemcardsModel11 = createModel(context, () => ItemcardsModel());
    itemcardsModel12 = createModel(context, () => ItemcardsModel());
    itemcardsModel13 = createModel(context, () => ItemcardsModel());
    itemcardsModel14 = createModel(context, () => ItemcardsModel());
    itemcardsModel15 = createModel(context, () => ItemcardsModel());
    itemcardsModel16 = createModel(context, () => ItemcardsModel());
  }

  @override
  void dispose() {
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();

    filterbydropdownModel.dispose();
    itemcardsModel1.dispose();
    itemcardsModel2.dispose();
    itemcardsModel3.dispose();
    itemcardsModel4.dispose();
    itemcardsModel5.dispose();
    itemcardsModel6.dispose();
    itemcardsModel7.dispose();
    itemcardsModel8.dispose();
    itemcardsModel9.dispose();
    itemcardsModel10.dispose();
    itemcardsModel11.dispose();
    itemcardsModel12.dispose();
    itemcardsModel13.dispose();
    itemcardsModel14.dispose();
    itemcardsModel15.dispose();
    itemcardsModel16.dispose();
  }
}
