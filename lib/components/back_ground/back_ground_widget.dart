import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'back_ground_model.dart';
export 'back_ground_model.dart';

class BackGroundWidget extends StatefulWidget {
  const BackGroundWidget({Key? key}) : super(key: key);

  @override
  _BackGroundWidgetState createState() => _BackGroundWidgetState();
}

class _BackGroundWidgetState extends State<BackGroundWidget> {
  late BackGroundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackGroundModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xFFFFF7E9),
              border: Border.all(
                color: Color(0xFFFFF7E9),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(1.0, -1.05),
          child: Image.asset(
            'assets/images/Presentation2.gif',
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.0, 0.55),
          child: Image.asset(
            'assets/images/Presentation2-1.gif',
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
