import '/auth/firebase_auth/auth_util.dart';
import '/components/theme_toggle_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Theme_toggle component.
  late ThemeToggleModel themeToggleModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    themeToggleModel = createModel(context, () => ThemeToggleModel());
  }

  void dispose() {
    themeToggleModel.dispose();
  }

  /// Additional helper methods are added here.

}
