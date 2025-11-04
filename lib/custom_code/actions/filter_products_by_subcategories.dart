// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<ProductStruct>> filterProductsBySubcategories(
  AllProductsStruct
      allProductsData, // Input: the wrapper struct with all products
  List<int>
      selectedSubcategoryIds, // Input: the list of selected subcategory IDs
) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Access the list of products from the AllProductsStruct wrapper
  final List<ProductStruct>? allProductsList = allProductsData.products;

  // 1. Handle cases where the products list itself is null or empty
  if (allProductsList == null || allProductsList.isEmpty) {
    return []; // Return an empty list if no products to filter
  }

  // 2. If no filter IDs are selected, return the full list of products
  if (selectedSubcategoryIds.isEmpty) {
    return allProductsList;
  }

  // 3. Filter the list of ProductStruct based on selected subcategory IDs
  final List<ProductStruct> filteredList = allProductsList.where((product) {
    // Access the subcategory_id from each ProductStruct
    final int? productSubcategoryId = product.subcategoryid;

    // Only include products where subcategory_id is not null AND
    // the selectedSubcategoryIds list contains that product's subcategory_id.
    return productSubcategoryId != null &&
        selectedSubcategoryIds.contains(productSubcategoryId);
  }).toList(); // Convert the Iterable result back to a List<ProductStruct>

  return filteredList;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
