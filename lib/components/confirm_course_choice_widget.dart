import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_course_choice_model.dart';
export 'confirm_course_choice_model.dart';

class ConfirmCourseChoiceWidget extends StatefulWidget {
  const ConfirmCourseChoiceWidget({super.key});

  @override
  State<ConfirmCourseChoiceWidget> createState() =>
      _ConfirmCourseChoiceWidgetState();
}

class _ConfirmCourseChoiceWidgetState extends State<ConfirmCourseChoiceWidget> {
  late ConfirmCourseChoiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmCourseChoiceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<GlobalRow>>(
        future: GlobalTable().querySingleRow(
          queryFn: (q) => q,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<GlobalRow> containerGlobalRowList = snapshot.data!;

          final containerGlobalRow = containerGlobalRowList.isNotEmpty
              ? containerGlobalRowList.first
              : null;

          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: FutureBuilder<List<Questionnaire2Row>>(
              future: Questionnaire2Table().queryRows(
                queryFn: (q) => q,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<Questionnaire2Row> containerQuestionnaire2RowList =
                    snapshot.data!;

                return Container(
                  decoration: BoxDecoration(),
                  child: FutureBuilder<List<QuestionnaireRow>>(
                    future: QuestionnaireTable().queryRows(
                      queryFn: (q) => q,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<QuestionnaireRow> containerQuestionnaireRowList =
                          snapshot.data!;

                      return Container(
                        decoration: BoxDecoration(),
                        child: FutureBuilder<List<UsersRow>>(
                          future: UsersTable().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'id',
                              currentUserUid,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UsersRow> containerUsersRowList =
                                snapshot.data!;

                            final containerUsersRow =
                                containerUsersRowList.isNotEmpty
                                    ? containerUsersRowList.first
                                    : null;

                            return Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 250.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Вы выбрали',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                  if (FFAppState().courseNumber == 2)
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 0.0),
                                        child: Text(
                                          'Сестринское дело в терапии',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().courseNumber == 1)
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 0.0),
                                        child: Text(
                                          'Первичная медико-профилактическая помощь',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 3.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                FFAppState().currentOrderN =
                                                    containerGlobalRow!
                                                        .orderNumber;
                                                FFAppState().numberOfFreeTests =
                                                    containerGlobalRow
                                                        .numberOfFreeTests!;
                                                FFAppState().status = 1;
                                                FFAppState()
                                                    .quantityOfFreeTests = 0;
                                                FFAppState()
                                                        .terminationOfAccess =
                                                    functions.data(
                                                        getCurrentTimestamp,
                                                        containerGlobalRow
                                                            .durationOfAccess!);
                                                FFAppState().durationOfAccess =
                                                    containerGlobalRow
                                                        .durationOfAccess!;
                                                safeSetState(() {});
                                                await GlobalTable().update(
                                                  data: {
                                                    'orderNumber':
                                                        functions.nextNumber(
                                                            containerGlobalRow
                                                                .orderNumber),
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    '0b2025e2-d000-4c70-95cb-793d6e5dc157',
                                                  ),
                                                );
                                                await UsersTable().update(
                                                  data: {
                                                    'terminationOfAccess': supaSerialize<
                                                            DateTime>(
                                                        functions.data(
                                                            getCurrentTimestamp,
                                                            containerGlobalRow
                                                                .durationOfAccess!)),
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    currentUserUid,
                                                  ),
                                                );
                                                FFAppState().nnn1 = 0;
                                                safeSetState(() {});
                                                FFAppState().questionnaire = [];
                                                safeSetState(() {});
                                                if (FFAppState().courseNumber ==
                                                    1) {
                                                  FFAppState().nnn =
                                                      containerQuestionnaireRowList
                                                          .length;
                                                  safeSetState(() {});
                                                  await UsersTable().update(
                                                    data: {
                                                      'numberOfQuestions':
                                                          FFAppState().nnn,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      currentUserUid,
                                                    ),
                                                  );
                                                  while (FFAppState().nnn1 <
                                                      FFAppState().nnn) {
                                                    FFAppState()
                                                        .addToQuestionnaire(
                                                            QuestionnaireStruct(
                                                      uuid:
                                                          containerQuestionnaireRowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.uuid,
                                                      subject:
                                                          containerQuestionnaireRowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.subject,
                                                      number:
                                                          containerQuestionnaireRowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.number,
                                                      question:
                                                          containerQuestionnaireRowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.question,
                                                      aa: containerQuestionnaireRowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.aa,
                                                      bb: containerQuestionnaireRowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.bb,
                                                      cc: containerQuestionnaireRowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.cc,
                                                      dd: containerQuestionnaireRowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.dd,
                                                      answer:
                                                          containerQuestionnaireRowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.answer,
                                                    ));
                                                    safeSetState(() {});
                                                    FFAppState().nnn1 =
                                                        FFAppState().nnn1 + 1;
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  FFAppState().nnn =
                                                      containerQuestionnaire2RowList
                                                          .length;
                                                  safeSetState(() {});
                                                  await UsersTable().update(
                                                    data: {
                                                      'numberOfQuestions':
                                                          FFAppState().nnn,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      currentUserUid,
                                                    ),
                                                  );
                                                  while (FFAppState().nnn1 <
                                                      FFAppState().nnn) {
                                                    FFAppState()
                                                        .addToQuestionnaire(
                                                            QuestionnaireStruct(
                                                      uuid:
                                                          containerQuestionnaire2RowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.uuid,
                                                      subject:
                                                          containerQuestionnaire2RowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.subject,
                                                      number:
                                                          containerQuestionnaire2RowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.number,
                                                      question:
                                                          containerQuestionnaire2RowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.question,
                                                      aa: containerQuestionnaire2RowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.aa,
                                                      bb: containerQuestionnaire2RowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.bb,
                                                      cc: containerQuestionnaire2RowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.cc,
                                                      dd: containerQuestionnaire2RowList
                                                          .elementAtOrNull(
                                                              FFAppState().nnn1)
                                                          ?.dd,
                                                      answer:
                                                          containerQuestionnaire2RowList
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .nnn1)
                                                              ?.answer,
                                                    ));
                                                    safeSetState(() {});
                                                    FFAppState().nnn1 =
                                                        FFAppState().nnn1 + 1;
                                                    safeSetState(() {});
                                                  }
                                                }

                                                context.pushNamed(
                                                    HomePageWidget.routeName);
                                              },
                                              text: 'Да',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 0.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                FFAppState().courseNumber = 0;
                                                safeSetState(() {});
                                                Navigator.pop(context);
                                              },
                                              text: 'Отмена',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
