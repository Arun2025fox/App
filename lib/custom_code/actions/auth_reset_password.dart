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

Future<GenericResponseStruct?> authResetPassword(String email) async {
  print('[Reset Password] Sending reset link to $email');

  final res = await ForgotPasswordCall.call(email: email);

  print('[Reset Password] Status: ${res.statusCode}');
  print('[Reset Password] Body: ${res.bodyText}');

  if (res.succeeded) {
    return GenericResponseStruct(
      status: 'success',
      message: 'Password reset email sent successfully!',
    );
  } else {
    return GenericResponseStruct(
      status: 'error',
      message: 'Failed to send password reset link.',
    );
  }
}
