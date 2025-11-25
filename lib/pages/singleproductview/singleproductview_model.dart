import '/components/breadcrumps/breadcrumps_widget.dart';
import '/components/footer_desktop/footer_desktop_widget.dart';
import '/components/footer_for_mobile/footer_for_mobile_widget.dart';
import '/components/headerfordesktop/headerfordesktop_widget.dart';
import '/components/itemcards/itemcards_widget.dart';
import '/components/itemcards_mobile/itemcards_mobile_widget.dart';
import '/components/single_product_button/single_product_button_widget.dart';
import '/components/single_product_carousel/single_product_carousel_widget.dart';
import '/components/single_product_description/single_product_description_widget.dart';
import '/components/single_product_shipping/single_product_shipping_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'singleproductview_widget.dart' show SingleproductviewWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SingleproductviewModel extends FlutterFlowModel<SingleproductviewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for headerfordesktop component.
  late HeaderfordesktopModel headerfordesktopModel;
  // Model for breadcrumps component.
  late BreadcrumpsModel breadcrumpsModel;
  // Model for singleProductCarousel component.
  late SingleProductCarouselModel singleProductCarouselModel;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // Model for singleProductButton component.
  late SingleProductButtonModel singleProductButtonModel1;
  // Model for singleProductButton component.
  late SingleProductButtonModel singleProductButtonModel2;
  // Model for singleProductDescription component.
  late SingleProductDescriptionModel singleProductDescriptionModel;
  // Model for singleProductShipping component.
  late SingleProductShippingModel singleProductShippingModel;
  // Models for itemcards dynamic component.
  late FlutterFlowDynamicModels<ItemcardsModel> itemcardsModels;
  // Model for footerDesktop component.
  late FooterDesktopModel footerDesktopModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 2;

  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for itemcards-mobile component.
  late ItemcardsMobileModel itemcardsMobileModel;
  // Model for footerForMobile component.
  late FooterForMobileModel footerForMobileModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    headerfordesktopModel = createModel(context, () => HeaderfordesktopModel());
    breadcrumpsModel = createModel(context, () => BreadcrumpsModel());
    singleProductCarouselModel =
        createModel(context, () => SingleProductCarouselModel());
    singleProductButtonModel1 =
        createModel(context, () => SingleProductButtonModel());
    singleProductButtonModel2 =
        createModel(context, () => SingleProductButtonModel());
    singleProductDescriptionModel =
        createModel(context, () => SingleProductDescriptionModel());
    singleProductShippingModel =
        createModel(context, () => SingleProductShippingModel());
    itemcardsModels = FlutterFlowDynamicModels(() => ItemcardsModel());
    footerDesktopModel = createModel(context, () => FooterDesktopModel());
    itemcardsMobileModel = createModel(context, () => ItemcardsMobileModel());
    footerForMobileModel = createModel(context, () => FooterForMobileModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    headerfordesktopModel.dispose();
    breadcrumpsModel.dispose();
    singleProductCarouselModel.dispose();
    singleProductButtonModel1.dispose();
    singleProductButtonModel2.dispose();
    singleProductDescriptionModel.dispose();
    singleProductShippingModel.dispose();
    itemcardsModels.dispose();
    footerDesktopModel.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    itemcardsMobileModel.dispose();
    footerForMobileModel.dispose();
  }
}
