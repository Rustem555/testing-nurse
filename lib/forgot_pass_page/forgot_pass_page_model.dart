import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_pass_page_widget.dart' show ForgotPassPageWidget;
import 'package:flutter/material.dart';

class ForgotPassPageModel extends FlutterFlowModel<ForgotPassPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for newPassword widget.
  final newPasswordKey = GlobalKey();
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  String? newPasswordSelectedOption;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
  }
}
