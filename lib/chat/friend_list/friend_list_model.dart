import '/components/friend_widget.dart';
import '/components/select_friend_widget.dart';
import '/components/top_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FriendListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopProfile component.
  late TopProfileModel topProfileModel;
  // Model for Friend component.
  late FriendModel friendModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topProfileModel = createModel(context, () => TopProfileModel());
    friendModel = createModel(context, () => FriendModel());
  }

  void dispose() {
    topProfileModel.dispose();
    friendModel.dispose();
  }

  /// Additional helper methods are added here.

}
