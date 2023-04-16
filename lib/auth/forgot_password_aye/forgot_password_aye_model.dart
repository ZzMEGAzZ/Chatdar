import '/auth/firebase_auth/auth_util.dart';
import '/components/background_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordAyeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // State field(s) for UsernameOrEmail widget.
  TextEditingController? usernameOrEmailController;
  String? Function(BuildContext, String?)? usernameOrEmailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
  }

  void dispose() {
    backgroundModel.dispose();
    usernameOrEmailController?.dispose();
  }

  /// Additional helper methods are added here.

}
