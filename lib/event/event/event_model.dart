import '/components/add_event_detail_widget.dart';
import '/components/schedule_widget.dart';
import '/components/top_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopProfile component.
  late TopProfileModel topProfileModel;
  // Model for Schedule component.
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
