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

Future<AuthUserStruct?> authSignUpCustomer(
  String fullName,
  String mobile,
  String email,
  String password,
) async {
  print('[Signup] Creating Supabase Auth user for $email');

  final res = await SignupCustomerCall.call(
    fullName: fullName,
    mobile: mobile,
    email: email,
    password: password,
  );

  print('[Signup] Status: ${res.statusCode}');
  print('[Signup] Response: ${res.bodyText}');

  if (res.succeeded) {
    final authId = getJsonField(res.jsonBody, r'$.user.id') ?? '';
    final accessToken = getJsonField(res.jsonBody, r'$.access_token') ?? '';
    final refreshToken = getJsonField(res.jsonBody, r'$.refresh_token') ?? '';

    print('[Signup] Success ✅ User ID: $authId');

    return AuthUserStruct(
      id: authId,
      email: email,
      accessToken: accessToken,
      refreshToken: refreshToken,
      createdAt: DateTime.now().toIso8601String(),
    );
  }

  print('[Signup] Failed ❌');
  return null;
}
