import '/components/confirm_password_widget.dart';
import '/components/login_email_widget.dart';
import '/components/login_password_widget.dart';
import '/components/mobile_number_signup_widget.dart';
import '/components/signup_email_widget.dart';
import '/components/signup_password_widget.dart';
import '/components/signup_username_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  Local state fields for this page.

  bool isSignup = false;

  ///  State fields for stateful widgets in this page.

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
  late LoginEmailModel loginEmailModel;
  // Model for login_password component.
  late LoginPasswordModel loginPasswordModel;
  // State field(s) for rememberMeCheckBox widget.
  bool? rememberMeCheckBoxValue2;

  @override
  void initState(BuildContext context) {
    loginformScrollController = ScrollController();
    signupUsernameModel = createModel(context, () => SignupUsernameModel());
    signupEmailModel = createModel(context, () => SignupEmailModel());
    mobileNumberSignupModel =
        createModel(context, () => MobileNumberSignupModel());
    signupPasswordModel = createModel(context, () => SignupPasswordModel());
    confirmPasswordModel = createModel(context, () => ConfirmPasswordModel());
    loginEmailModel = createModel(context, () => LoginEmailModel());
    loginPasswordModel = createModel(context, () => LoginPasswordModel());
  }

  @override
  void dispose() {
    loginformScrollController?.dispose();
    signupUsernameModel.dispose();
    signupEmailModel.dispose();
    mobileNumberSignupModel.dispose();
    signupPasswordModel.dispose();
    confirmPasswordModel.dispose();
    loginEmailModel.dispose();
    loginPasswordModel.dispose();
  }
}
