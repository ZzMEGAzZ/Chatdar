import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'end_date_picker_model.dart';
export 'end_date_picker_model.dart';

class EndDatePickerWidget extends StatefulWidget {
  const EndDatePickerWidget({Key? key}) : super(key: key);

  @override
  _EndDatePickerWidgetState createState() => _EndDatePickerWidgetState();
}

class _EndDatePickerWidgetState extends State<EndDatePickerWidget> {
  late EndDatePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EndDatePickerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Stack(
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Date',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: FlutterFlowCalendar(
            color: FlutterFlowTheme.of(context).primaryColor,
            weekFormat: false,
            weekStartsMonday: false,
            onChange: (DateTimeRange? newSelectedDate) async {
              _model.calendarSelectedDay = newSelectedDate;
              Navigator.pop(context);
              setState(() {});
            },
            titleStyle: TextStyle(),
            dayOfWeekStyle: TextStyle(),
            dateStyle: TextStyle(),
            selectedDateStyle: TextStyle(),
            inactiveDateStyle: TextStyle(),
          ),
        ),
      ],
    );
  }
}
