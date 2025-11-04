import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/filterbydropdown/filterbydropdown_widget.dart';
import '/components/filteroptions_widget.dart';
import '/components/header_widget.dart';
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

  List<int> selectedSubcategoryIds = [];
  void addToSelectedSubcategoryIds(int item) =>
      selectedSubcategoryIds.add(item);
  void removeFromSelectedSubcategoryIds(int item) =>
      selectedSubcategoryIds.remove(item);
  void removeAtIndexFromSelectedSubcategoryIds(int index) =>
      selectedSubcategoryIds.removeAt(index);
  void insertAtIndexInSelectedSubcategoryIds(int index, int item) =>
      selectedSubcategoryIds.insert(index, item);
  void updateSelectedSubcategoryIdsAtIndex(int index, Function(int) updateFn) =>
      selectedSubcategoryIds[index] = updateFn(selectedSubcategoryIds[index]);

  List<ProductStruct> filteredProducts = [];
  void addToFilteredProducts(ProductStruct item) => filteredProducts.add(item);
  void removeFromFilteredProducts(ProductStruct item) =>
      filteredProducts.remove(item);
  void removeAtIndexFromFilteredProducts(int index) =>
      filteredProducts.removeAt(index);
  void insertAtIndexInFilteredProducts(int index, ProductStruct item) =>
      filteredProducts.insert(index, item);
  void updateFilteredProductsAtIndex(
          int index, Function(ProductStruct) updateFn) =>
      filteredProducts[index] = updateFn(filteredProducts[index]);

  AllProductsStruct? allProductsList;
  void updateAllProductsListStruct(Function(AllProductsStruct) updateFn) {
    updateFn(allProductsList ??= AllProductsStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Generate Catalogue)] action in HomePage widget.
  ApiCallResponse? apiResult2ih;
  // Model for header component.
  late HeaderModel headerModel;
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
  // Models for productscategory dynamic component.
  late FlutterFlowDynamicModels<ProductscategoryModel> productscategoryModels;
  // Models for filteroptions dynamic component.
  late FlutterFlowDynamicModels<FilteroptionsModel> filteroptionsModels;
  // Stores action output result for [Custom Action - filterProductsBySubcategories] action in filteroptions widget.
  List<ProductStruct>? filteredList;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for filterbydropdown component.
  late FilterbydropdownModel filterbydropdownModel;
  // Models for itemcards dynamic component.
  late FlutterFlowDynamicModels<ItemcardsModel> itemcardsModels;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? Function(BuildContext, String?)? searchbarTextControllerValidator;
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
    headerModel = createModel(context, () => HeaderModel());
    rowController1 = ScrollController();
    rowController2 = ScrollController();
    productcategoryScrollController = ScrollController();
    productscategoryModels =
        FlutterFlowDynamicModels(() => ProductscategoryModel());
    filteroptionsModels = FlutterFlowDynamicModels(() => FilteroptionsModel());
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModels = FlutterFlowDynamicModels(() => ItemcardsModel());
    productscategoryCopyModel =
        createModel(context, () => ProductscategoryCopyModel());
    itemcardsMobileModel = createModel(context, () => ItemcardsMobileModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    rowController1?.dispose();
    rowController2?.dispose();
    productcategoryScrollController?.dispose();
    productscategoryModels.dispose();
    filteroptionsModels.dispose();
    filterbydropdownModel.dispose();
    itemcardsModels.dispose();
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();

    productscategoryCopyModel.dispose();
    itemcardsMobileModel.dispose();
  }

  /// Action blocks.
  Future filterProductsonSubCategory(
    BuildContext context, {
    int? subcategoryID,
  }) async {}
}
