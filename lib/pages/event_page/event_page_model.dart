import '/components/schedule/schedule_widget.dart';
import '/components/start_date_picker/start_date_picker_widget.dart';
import '/components/top_profile/top_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopProfile component.
  late TopProfileModel topProfileModel;
  // Model for schedule component.
  late ScheduleModel scheduleModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topProfileModel = createModel(context, () => TopProfileModel());
    scheduleModel = createModel(context, () => ScheduleModel());
  }

  void dispose() {
    topProfileModel.dispose();
    scheduleModel.dispose();
  }

  /// Additional helper methods are added here.

}
