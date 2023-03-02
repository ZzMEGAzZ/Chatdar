import '/components/friend/friend_widget.dart';
import '/components/top_profile/top_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FriendlistModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopProfile component.
  late TopProfileModel topProfileModel;
  // Model for Friend component.
  late FriendModel friendModel1;
  // Model for Friend component.
  late FriendModel friendModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topProfileModel = createModel(context, () => TopProfileModel());
    friendModel1 = createModel(context, () => FriendModel());
    friendModel2 = createModel(context, () => FriendModel());
  }

  void dispose() {
    topProfileModel.dispose();
    friendModel1.dispose();
    friendModel2.dispose();
  }

  /// Additional helper methods are added here.

}
