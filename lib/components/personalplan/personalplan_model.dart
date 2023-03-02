import '/components/friend/friend_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalplanModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for title widget.
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for Description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for Location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    titleController?.dispose();
    descriptionController?.dispose();
    locationController?.dispose();
  }

  /// Additional helper methods are added here.

}
