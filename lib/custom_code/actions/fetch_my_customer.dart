// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import '/backend/api_calls.dart';

Future<CustomerStruct?> fetchMyCustomer(String authId) async {
  print('[Fetch Customer] Fetching customer for $authId');

  final res = await GetCustomerCall.call(authId: authId);

  print('[Fetch Customer] Status: ${res.statusCode}');
  print('[Fetch Customer] Body: ${res.bodyText}');

  if (res.succeeded && res.jsonBody is List && res.jsonBody.isNotEmpty) {
    final data = res.jsonBody[0];
    print('[Fetch Customer] Success ✅ Data: $data');

    return CustomerStruct(
      customerId: data['customer_id'],
      fullName: data['full_name'],
      mobileNumber: data['mobile_number'],
      email: data['email'],
      address: data['address'],
      state: data['state'],
      pincode: data['pincode'],
      authId: data['auth_id'],
    );
  }

  print('[Fetch Customer] No record found ❌');
  return null;
}
