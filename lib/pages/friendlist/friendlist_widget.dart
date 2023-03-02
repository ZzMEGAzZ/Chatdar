import '/components/friend/friend_widget.dart';
import '/components/top_profile/top_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'friendlist_model.dart';
export 'friendlist_model.dart';

class FriendlistWidget extends StatefulWidget {
  const FriendlistWidget({Key? key}) : super(key: key);

  @override
  _FriendlistWidgetState createState() => _FriendlistWidgetState();
}

class _FriendlistWidgetState extends State<FriendlistWidget> {
  late FriendlistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FriendlistModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFDEC0A3),
      body: SafeArea(
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
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryColor,
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Example 1',
                          ),
                          Tab(
                            text: 'Example 2',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -0.25),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDEC0A3),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        0.75,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(50.0),
                                        topRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: wrapWithModel(
                                      model: _model.friendModel1,
                                      updateCallback: () => setState(() {}),
                                      child: FriendWidget(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -0.25),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDEC0A3),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        0.75,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(50.0),
                                        topRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: wrapWithModel(
                                      model: _model.friendModel2,
                                      updateCallback: () => setState(() {}),
                                      child: FriendWidget(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
    );
  }
}
