import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_model.dart';
export 'schedule_model.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

  @override
  _ScheduleWidgetState createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  late ScheduleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<EventScheduleRecord>>(
      stream: queryEventScheduleRecord(
        queryBuilder: (eventScheduleRecord) => eventScheduleRecord
            .where('views', arrayContains: currentUserReference)
            .orderBy('date_start'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<EventScheduleRecord> listViewEventScheduleRecordList =
            snapshot.data!;
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: listViewEventScheduleRecordList.length,
          itemBuilder: (context, listViewIndex) {
            final listViewEventScheduleRecord =
                listViewEventScheduleRecordList[listViewIndex];
            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: Container(
                width: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).grayIcon,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dateTimeFormat('d/M/y',
                                listViewEventScheduleRecord.dateStart!),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          if (dateTimeFormat('d/M/y',
                                  listViewEventScheduleRecord.dateEnd) !=
                              dateTimeFormat('d/M/y',
                                  listViewEventScheduleRecord.dateStart))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Text(
                                '-',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          if (dateTimeFormat('d/M/y',
                                  listViewEventScheduleRecord.dateEnd) !=
                              dateTimeFormat('d/M/y',
                                  listViewEventScheduleRecord.dateStart))
                            Text(
                              dateTimeFormat('d/M/y',
                                  listViewEventScheduleRecord.dateEnd!),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    StreamBuilder<List<EventDetailRecord>>(
                      stream: queryEventDetailRecord(
                        queryBuilder: (eventDetailRecord) => eventDetailRecord
                            .where('views', arrayContains: currentUserReference)
                            .orderBy('date_start'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<EventDetailRecord> listViewEventDetailRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewEventDetailRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewEventDetailRecord =
                                listViewEventDetailRecordList[listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      listViewEventDetailRecord.title!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
