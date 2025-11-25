// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/schema/structs/index.dart'; // Ensure this import is present

Future<List<ProductStruct>> searchProducts(
  List<ProductStruct> allProducts,
  String query,
) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (query.isEmpty) {
    return allProducts; // If query is empty, return the full list
  }

  final String lowerCaseQuery = query.toLowerCase();

  return allProducts.where((product) {
    // Assuming your ProductStruct has fields like 'name', 'description', etc.
    // Adjust these field names to match your actual ProductStruct fields.
    final String productName =
        product.name?.toLowerCase() ?? ''; // Example field

    return productName.contains(lowerCaseQuery);
  }).toList();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
