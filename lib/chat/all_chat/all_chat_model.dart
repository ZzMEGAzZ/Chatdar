import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/top_profile_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllChatModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopProfile component.
  late TopProfileModel topProfileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topProfileModel = createModel(context, () => TopProfileModel());
  }

  void dispose() {
    topProfileModel.dispose();
  }

  /// Additional helper methods are added here.

}
