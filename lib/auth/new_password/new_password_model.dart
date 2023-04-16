import '/components/background_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewPasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // State field(s) for newpassword widget.
  TextEditingController? newpasswordController;
  late bool newpasswordVisibility;
  String? Function(BuildContext, String?)? newpasswordControllerValidator;
  // State field(s) for newpasswordagain widget.
  TextEditingController? newpasswordagainController;
  late bool newpasswordagainVisibility;
  String? Function(BuildContext, String?)? newpasswordagainControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    newpasswordVisibility = false;
    newpasswordagainVisibility = false;
  }

  void dispose() {
    backgroundModel.dispose();
    newpasswordController?.dispose();
    newpasswordagainController?.dispose();
  }

  /// Additional helper methods are added here.

}
