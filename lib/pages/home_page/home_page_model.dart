import '/components/filterbydropdown/filterbydropdown_widget.dart';
import '/components/itemcards/itemcards_widget.dart';
import '/components/itemcards_mobile/itemcards_mobile_widget.dart';
import '/components/productscategory/productscategory_widget.dart';
import '/components/productscategory_copy/productscategory_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.
  /// list of prodcuts
  List<dynamic> productList = [];
  void addToProductList(dynamic item) => productList.add(item);
  void removeFromProductList(dynamic item) => productList.remove(item);
  void removeAtIndexFromProductList(int index) => productList.removeAt(index);
  void insertAtIndexInProductList(int index, dynamic item) =>
      productList.insert(index, item);
  void updateProductListAtIndex(int index, Function(dynamic) updateFn) =>
      productList[index] = updateFn(productList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode1;
  TextEditingController? searchbarTextController1;
  String? Function(BuildContext, String?)? searchbarTextController1Validator;
  // State field(s) for Row widget.
  ScrollController? rowController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for Row widget.
  ScrollController? rowController2;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for productcategory widget.
  ScrollController? productcategoryScrollController;
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
  late ItemcardsModel itemcardsModel;
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
  // Model for itemcards-mobile component.
  late ItemcardsMobileModel itemcardsMobileModel;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    rowController1 = ScrollController();
    rowController2 = ScrollController();
    productcategoryScrollController = ScrollController();
    productscategoryModel = createModel(context, () => ProductscategoryModel());
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModel = createModel(context, () => ItemcardsModel());
    productscategoryCopyModel =
        createModel(context, () => ProductscategoryCopyModel());
    itemcardsMobileModel = createModel(context, () => ItemcardsMobileModel());
  }

  @override
  void dispose() {
    searchbarFocusNode1?.dispose();
    searchbarTextController1?.dispose();

    rowController1?.dispose();
    rowController2?.dispose();
    productcategoryScrollController?.dispose();
    productscategoryModel.dispose();
    filterbydropdownModel.dispose();
    itemcardsModel.dispose();
    searchbarFocusNode2?.dispose();
    searchbarTextController2?.dispose();

    productscategoryCopyModel.dispose();
    itemcardsMobileModel.dispose();
  }
}
