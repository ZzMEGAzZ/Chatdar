import '/components/schedule/schedule_widget.dart';
import '/components/start_date_picker/start_date_picker_widget.dart';
import '/components/top_profile/top_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_page_model.dart';
export 'event_page_model.dart';

class EventPageWidget extends StatefulWidget {
  const EventPageWidget({
    Key? key,
    this.selectDay,
  }) : super(key: key);

  final DateTime? selectDay;

  @override
  _EventPageWidgetState createState() => _EventPageWidgetState();
}

class _EventPageWidgetState extends State<EventPageWidget> {
  late EventPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().CalendarShowState = false;
      });
      await Future.delayed(const Duration(milliseconds: 100));
      setState(() {
        FFAppState().CalendarShowState = true;
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFDEC0A3),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: MediaQuery.of(context).size.height * 1.0,
                  child: StartDatePickerWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 10.0,
        label: Icon(
          Icons.add,
          color: FlutterFlowTheme.of(context).primaryBtnText,
          size: 24.0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFDEC0A3),
                  ),
                  child: wrapWithModel(
                    model: _model.topProfileModel,
                    updateCallback: () => setState(() {}),
                    child: TopProfileWidget(),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.25),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDEC0A3),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.75,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        ),
                        child: wrapWithModel(
                          model: _model.scheduleModel,
                          updateCallback: () => setState(() {}),
                          child: ScheduleWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
