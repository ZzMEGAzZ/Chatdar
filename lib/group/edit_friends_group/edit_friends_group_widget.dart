import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_friends_group_model.dart';
export 'edit_friends_group_model.dart';

class EditFriendsGroupWidget extends StatefulWidget {
  const EditFriendsGroupWidget({
    Key? key,
    this.chatdoc,
    this.chatRef,
    this.member,
  }) : super(key: key);

  final ChatsRecord? chatdoc;
  final DocumentReference? chatRef;
  final DocumentReference? member;

  @override
  _EditFriendsGroupWidgetState createState() => _EditFriendsGroupWidgetState();
}

class _EditFriendsGroupWidgetState extends State<EditFriendsGroupWidget> {
  late EditFriendsGroupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditFriendsGroupModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().selectFriend =
            widget.chatdoc!.users!.toList().map((e) => e.id).toList().toList();
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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

    return StreamBuilder<ChatsRecord>(
      stream: ChatsRecord.getDocument(widget.chatRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final editFriendsGroupChatsRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Choose Friends',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 21.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primary,
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                indicatorColor:
                                    FlutterFlowTheme.of(context).secondary,
                                tabs: [
                                  Tab(
                                    text: 'Remove',
                                  ),
                                  Tab(
                                    text: 'Add',
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          StreamBuilder<List<UsersRecord>>(
                                            stream: queryUsersRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRecord>
                                                  listViewUsersRecordList =
                                                  snapshot.data!
                                                      .where((u) =>
                                                          u.uid !=
                                                          currentUserUid)
                                                      .toList();
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewUsersRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewUsersRecord =
                                                      listViewUsersRecordList[
                                                          listViewIndex];
                                                  return Visibility(
                                                    visible:
                                                        editFriendsGroupChatsRecord
                                                            .users!
                                                            .toList()
                                                            .contains(
                                                                listViewUsersRecord
                                                                    .reference),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 60.0,
                                                            height: 60.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              listViewUsersRecord
                                                                  .photoUrl!,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                              ),
                                                              child:
                                                                  CheckboxListTile(
                                                                value: _model
                                                                        .checkboxListTileValueMap1[
                                                                    listViewUsersRecord] ??= false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxListTileValueMap1[
                                                                              listViewUsersRecord] =
                                                                          newValue!);
                                                                },
                                                                title: Text(
                                                                  listViewUsersRecord
                                                                      .displayName!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall,
                                                                ),
                                                                tileColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                dense: false,
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .trailing,
                                                              ),
                                                            ),
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
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord>
                                              buttonUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final buttonUsersRecord =
                                              buttonUsersRecordList.isNotEmpty
                                                  ? buttonUsersRecordList.first
                                                  : null;
                                          return FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                FFAppState()
                                                    .addToSelectFriend('');
                                              });
                                              _model.groupChat =
                                                  await FFChatManager.instance
                                                      .removeGroupMembers(
                                                editFriendsGroupChatsRecord,
                                                _model
                                                    .checkboxListTileCheckedItems1
                                                    .map((e) => e.reference)
                                                    .toList(),
                                              );
                                              context.safePop();

                                              setState(() {});
                                            },
                                            text: 'select',
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 2.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          StreamBuilder<List<UsersRecord>>(
                                            stream: queryUsersRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRecord>
                                                  listViewUsersRecordList =
                                                  snapshot.data!
                                                      .where((u) =>
                                                          u.uid !=
                                                          currentUserUid)
                                                      .toList();
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewUsersRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewUsersRecord =
                                                      listViewUsersRecordList[
                                                          listViewIndex];
                                                  return Visibility(
                                                    visible: ((currentUserDocument
                                                                        ?.friends
                                                                        ?.toList() ??
                                                                    [])
                                                                .contains(
                                                                    listViewUsersRecord
                                                                        .reference) !=
                                                            editFriendsGroupChatsRecord
                                                                .users!
                                                                .toList()
                                                                .contains(
                                                                    listViewUsersRecord
                                                                        .reference)) &&
                                                        (currentUserDocument
                                                                    ?.friends
                                                                    ?.toList() ??
                                                                [])
                                                            .contains(
                                                                listViewUsersRecord
                                                                    .reference),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 60.0,
                                                              height: 60.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                listViewUsersRecord
                                                                    .photoUrl!,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            if ((currentUserDocument
                                                                        ?.friends
                                                                        ?.toList() ??
                                                                    [])
                                                                .contains(
                                                                    listViewUsersRecord
                                                                        .reference))
                                                              Expanded(
                                                                child: Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                  ),
                                                                  child:
                                                                      CheckboxListTile(
                                                                    value: _model
                                                                            .checkboxListTileValueMap2[
                                                                        listViewUsersRecord] ??= false,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      setState(() =>
                                                                          _model.checkboxListTileValueMap2[listViewUsersRecord] =
                                                                              newValue!);
                                                                    },
                                                                    title: Text(
                                                                      listViewUsersRecord
                                                                          .displayName!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall,
                                                                    ),
                                                                    tileColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    dense:
                                                                        false,
                                                                    controlAffinity:
                                                                        ListTileControlAffinity
                                                                            .trailing,
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord>
                                              buttonUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final buttonUsersRecord =
                                              buttonUsersRecordList.isNotEmpty
                                                  ? buttonUsersRecordList.first
                                                  : null;
                                          return FFButtonWidget(
                                            onPressed: () async {
                                              setState(() {
                                                FFAppState().addToSelectFriend(
                                                    currentUserReference!.id);
                                              });
                                              _model.add = await FFChatManager
                                                  .instance
                                                  .addGroupMembers(
                                                editFriendsGroupChatsRecord,
                                                _model
                                                    .checkboxListTileCheckedItems2
                                                    .map((e) => e.reference)
                                                    .toList(),
                                              );
                                              context.safePop();

                                              setState(() {});
                                            },
                                            text: 'select',
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 2.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          );
                                        },
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
