import '/components/confirm_password/confirm_password_widget.dart';
import '/components/login_email/login_email_widget.dart';
import '/components/login_password/login_password_widget.dart';
import '/components/mobile_number_signup/mobile_number_signup_widget.dart';
import '/components/signup_email/signup_email_widget.dart';
import '/components/signup_password/signup_password_widget.dart';
import '/components/signup_username/signup_username_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  Local state fields for this page.

  bool isSignup = false;

  bool isForgetPassword = false;

  bool isOTP = false;

  bool isOTPsent = false;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for loginform widget.
  ScrollController? loginformScrollController;
  // Model for signup_username component.
  late SignupUsernameModel signupUsernameModel;
  // Model for signup_email component.
  late SignupEmailModel signupEmailModel;
  // Model for mobile_number_signup component.
  late MobileNumberSignupModel mobileNumberSignupModel;
  // Model for signup_password component.
  late SignupPasswordModel signupPasswordModel;
  // Model for confirm_password component.
  late ConfirmPasswordModel confirmPasswordModel;
  // State field(s) for rememberMeCheckBox widget.
  bool? rememberMeCheckBoxValue1;
  // Model for login_email component.
  late LoginEmailModel loginEmailModel1;
  // Model for login_password component.
  late LoginPasswordModel loginPasswordModel;
  // State field(s) for rememberMeCheckBox widget.
  bool? rememberMeCheckBoxValue2;
  // Model for login_email component.
  late LoginEmailModel loginEmailModel2;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    loginformScrollController = ScrollController();
    signupUsernameModel = createModel(context, () => SignupUsernameModel());
    signupEmailModel = createModel(context, () => SignupEmailModel());
    mobileNumberSignupModel =
        createModel(context, () => MobileNumberSignupModel());
    signupPasswordModel = createModel(context, () => SignupPasswordModel());
    confirmPasswordModel = createModel(context, () => ConfirmPasswordModel());
    loginEmailModel1 = createModel(context, () => LoginEmailModel());
    loginPasswordModel = createModel(context, () => LoginPasswordModel());
    loginEmailModel2 = createModel(context, () => LoginEmailModel());
    pinCodeController = TextEditingController();
    signupUsernameModel.textControllerValidator = _formTextFieldValidator11;
    signupEmailModel.textControllerValidator = _formTextFieldValidator12;
    mobileNumberSignupModel.textControllerValidator = _formTextFieldValidator13;
    signupPasswordModel.textControllerValidator = _formTextFieldValidator14;
    confirmPasswordModel.textControllerValidator = _formTextFieldValidator15;
    loginEmailModel1.textControllerValidator = _formTextFieldValidator21;
    loginPasswordModel.textControllerValidator = _formTextFieldValidator22;
  }

  @override
  void dispose() {
    loginformScrollController?.dispose();
    signupUsernameModel.dispose();
    signupEmailModel.dispose();
    mobileNumberSignupModel.dispose();
    signupPasswordModel.dispose();
    confirmPasswordModel.dispose();
    loginEmailModel1.dispose();
    loginPasswordModel.dispose();
    loginEmailModel2.dispose();
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator11(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  String? _formTextFieldValidator12(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  String? _formTextFieldValidator13(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile number is required';
    }

    return null;
  }

  String? _formTextFieldValidator14(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required ';
    }

    return null;
  }

  String? _formTextFieldValidator15(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm your is required ';
    }

    return null;
  }

  String? _formTextFieldValidator21(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  String? _formTextFieldValidator22(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }
}
