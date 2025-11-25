import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/breadcrumps/breadcrumps_widget.dart';
import '/components/filter_bar/filter_bar_widget.dart';
import '/components/filterbydropdown/filterbydropdown_widget.dart';
import '/components/itemcards/itemcards_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'productspage_widget.dart' show ProductspageWidget;
import 'package:flutter/material.dart';

class ProductspageModel extends FlutterFlowModel<ProductspageWidget> {
  ///  Local state fields for this page.

  List<SinglecategoryStruct> category = [];
  void addToCategory(SinglecategoryStruct item) => category.add(item);
  void removeFromCategory(SinglecategoryStruct item) => category.remove(item);
  void removeAtIndexFromCategory(int index) => category.removeAt(index);
  void insertAtIndexInCategory(int index, SinglecategoryStruct item) =>
      category.insert(index, item);
  void updateCategoryAtIndex(
          int index, Function(SinglecategoryStruct) updateFn) =>
      category[index] = updateFn(category[index]);

  AllProductsStruct? filteredProductProductpage;
  void updateFilteredProductProductpageStruct(
      Function(AllProductsStruct) updateFn) {
    updateFn(filteredProductProductpage ??= AllProductsStruct());
  }

  int? itemCounttoDisplayProductsPage;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Generate Catalogue)] action in productspage widget.
  ApiCallResponse? apiResult178;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? Function(BuildContext, String?)? searchbarTextControllerValidator;
  // Stores action output result for [Custom Action - searchProducts] action in IconButton widget.
  List<ProductStruct>? searchedProducts;
  // Model for breadcrumps component.
  late BreadcrumpsModel breadcrumpsModel;
  // Model for filterBar component.
  late FilterBarModel filterBarModel;
  // Model for filterbydropdown component.
  late FilterbydropdownModel filterbydropdownModel;
  // Models for itemcards dynamic component.
  late FlutterFlowDynamicModels<ItemcardsModel> itemcardsModels;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    breadcrumpsModel = createModel(context, () => BreadcrumpsModel());
    filterBarModel = createModel(context, () => FilterBarModel());
    filterbydropdownModel = createModel(context, () => FilterbydropdownModel());
    itemcardsModels = FlutterFlowDynamicModels(() => ItemcardsModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();

    breadcrumpsModel.dispose();
    filterBarModel.dispose();
    filterbydropdownModel.dispose();
    itemcardsModels.dispose();
  }
}
