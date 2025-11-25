import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/filter_bar/filter_bar_widget.dart';
import '/components/filterbydropdown/filterbydropdown_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
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

  int? itemsCounttoDisplay;

  String searchquery = 'all';

  double? minRangeValue;

  double? maxRangeValue;

  List<SinglecategoryStruct> categoriesListinHome = [];
  void addToCategoriesListinHome(SinglecategoryStruct item) =>
      categoriesListinHome.add(item);
  void removeFromCategoriesListinHome(SinglecategoryStruct item) =>
      categoriesListinHome.remove(item);
  void removeAtIndexFromCategoriesListinHome(int index) =>
      categoriesListinHome.removeAt(index);
  void insertAtIndexInCategoriesListinHome(
          int index, SinglecategoryStruct item) =>
      categoriesListinHome.insert(index, item);
  void updateCategoriesListinHomeAtIndex(
          int index, Function(SinglecategoryStruct) updateFn) =>
      categoriesListinHome[index] = updateFn(categoriesListinHome[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Generate Catalogue)] action in HomePage widget.
  ApiCallResponse? apiResult2ih;
  // Stores action output result for [Backend Call - API (getCategories)] action in HomePage widget.
  ApiCallResponse? categoriesresponse;
  // State field(s) for homepage-searchbar widget.
  FocusNode? homepageSearchbarFocusNode;
  TextEditingController? homepageSearchbarTextController;
  String? Function(BuildContext, String?)?
      homepageSearchbarTextControllerValidator;
  // Stores action output result for [Custom Action - searchProducts] action in IconButton widget.
  List<ProductStruct>? searchedProducts;
  // State field(s) for dropdown-lisitngs widget.
  ScrollController? dropdownLisitngsScrollController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for dropdown-items widget.
  ScrollController? dropdownItemsScrollController;
  // State field(s) for herosection-images widget.
  CarouselSliderController? herosectionImagesController;
  int herosectionImagesCurrentIndex = 1;

  // State field(s) for productcategory widget.
  ScrollController? productcategoryScrollController;
  // Models for productscategory dynamic component.
  late FlutterFlowDynamicModels<ProductscategoryModel> productscategoryModels;
  // Model for filterBar component.
  late FilterBarModel filterBarModel;
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
  // Model for footerDesktop component.
  late FooterDesktopModel footerDesktopModel;
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
  // Model for footerForMobile component.
  late FooterForMobileModel footerForMobileModel;

  @override
  void initState(BuildContext context) {
    dropdownLisitngsScrollController = ScrollController();
    dropdownItemsScrollController = ScrollController();
    productcategoryScrollController = ScrollController();
    productscategoryModels =
        FlutterFlowDynamicModels(() => ProductscategoryModel());
    filterBarModel = createModel(context, () => FilterBarModel());
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModels = FlutterFlowDynamicModels(() => ItemcardsModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    productscategoryCopyModel =
        createModel(context, () => ProductscategoryCopyModel());
    itemcardsMobileModel = createModel(context, () => ItemcardsMobileModel());
    footerForMobileModel = createModel(context, () => FooterForMobileModel());
  }

  @override
  void dispose() {
    homepageSearchbarFocusNode?.dispose();
    homepageSearchbarTextController?.dispose();

    dropdownLisitngsScrollController?.dispose();
    dropdownItemsScrollController?.dispose();
    productcategoryScrollController?.dispose();
    productscategoryModels.dispose();
    filterBarModel.dispose();
    filterbydropdownModel.dispose();
    itemcardsModels.dispose();
    footerDesktopModel.dispose();
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();

    productscategoryCopyModel.dispose();
    itemcardsMobileModel.dispose();
    footerForMobileModel.dispose();
  }

  /// Action blocks.
  Future filterProductsonSubCategory(
    BuildContext context, {
    int? subcategoryID,
  }) async {}
}
