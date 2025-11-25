// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/schema/structs/index.dart'; // Crucial for ProductStruct

Future<List<ProductStruct>> filterProductsByRange(
  List<ProductStruct> allProducts,
  double minVal, // Use double for price, age, etc. Can be int if needed.
  double maxVal, // Use double for price, age, etc. Can be int if needed.
) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (allProducts.isEmpty) {
    return []; // Return empty list if no products
  }

  // Ensure minVal is not greater than maxVal (though the slider should prevent this)
  if (minVal > maxVal) {
    double temp = minVal;
    minVal = maxVal;
    maxVal = temp;
  }

  return allProducts.where((product) {
    // !!! IMPORTANT: Replace 'product.price' with the actual field name from your ProductStruct !!!
    // !!! that holds the numerical value you want to filter by (e.g., product.productPrice, product.age) !!!
    final double? productValue = product
        .saleprice; // Example: Assuming ProductStruct has a 'price' field of type Double

    if (productValue == null) {
      return false; // Exclude products with no value for the range filter
    }

    // Check if the product's value falls within the specified min and max range
    return productValue >= minVal && productValue <= maxVal;
  }).toList();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
