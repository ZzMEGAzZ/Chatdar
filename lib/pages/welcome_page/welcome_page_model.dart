import '/components/back_ground/back_ground_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for BackGround component.
  late BackGroundModel backGroundModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backGroundModel = createModel(context, () => BackGroundModel());
  }

  void dispose() {
    backGroundModel.dispose();
  }

  /// Additional helper methods are added here.

}
