import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'licence_agreement_model.dart';
export 'licence_agreement_model.dart';

class LicenceAgreementWidget extends StatefulWidget {
  const LicenceAgreementWidget({super.key});

  static String routeName = 'LicenceAgreement';
  static String routePath = '/licenceAgreement';

  @override
  State<LicenceAgreementWidget> createState() => _LicenceAgreementWidgetState();
}

class _LicenceAgreementWidgetState extends State<LicenceAgreementWidget> {
  late LicenceAgreementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LicenceAgreementModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GlobalRow>>(
      future: GlobalTable().querySingleRow(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<GlobalRow> licenceAgreementGlobalRowList = snapshot.data!;

        final licenceAgreementGlobalRow =
            licenceAgreementGlobalRowList.isNotEmpty
                ? licenceAgreementGlobalRowList.first
                : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).success,
                automaticallyImplyLeading: false,
                actions: [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Semantics(
                              label:
                                  'Нажмите, чтобы вернуться на предыдущий экран',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'Политика конфиденциальности',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 2.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (licenceAgreementGlobalRow?.condition ?? true)
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Рустем Ахмеров создал приложение как платное. Данная УСЛУГА предоставляется Рустемом Ахмеровым платно и предназначена для использования как есть.\nЭта страница используется для информирования посетителей о нашей политике в отношении сбора, использования и раскрытия Персональной информации, если кто-либо решил использовать нашу Службу.\nЕсли вы решите использовать наш Сервис, вы соглашаетесь на сбор и использование информации в соответствии с этой политикой. Персональная информация, которую мы собираем, используется для предоставления и улучшения Сервиса. Мы не будем использовать или передавать вашу информацию кому-либо, за исключением случаев, описанных в настоящей Политике конфиденциальности.\nТермины, используемые в настоящей Политике конфиденциальности, имеют те же значения, что и в наших Условиях использования, которые доступны по адресу, если иное не указано в настоящей Политике конфиденциальности.\nСбор и использование информации\nДля более удобного использования нашего Сервиса мы можем потребовать от вас предоставить нам определенную личную информацию, например имя пользователя, э/адрес. Информацию, которую мы запрашиваем, будет сохраняться на вашем устройстве и не собираться нами каким-либо образом.\nДанные журнала\nЯ хочу сообщить вам, что всякий раз, когда вы используете мой Сервис, в случае ошибки в приложении я не собираю данные и информацию (через сторонние продукты) на вашем телефоне под названием «Данные журнала».\nПеченье\nФайлы cookie — это файлы с небольшим объемом данных, которые обычно используются в качестве анонимных уникальных идентификаторов. Они отправляются в ваш браузер с веб-сайтов, которые вы посещаете, и сохраняются во внутренней памяти вашего устройства.\nДанная Служба не использует эти файлы cookie явно. \nПоставщики услуг\nМы можем нанимать сторонние компании и частных лиц по следующим причинам:\n•\tДля облегчения нашего Сервиса;\n•\tДля предоставления Услуги от нашего имени;\n•\tДля оказания услуг, связанных с Сервисом; или\n•\tЧтобы помочь нам проанализировать, как используется наш Сервис.\nМы хотим сообщить пользователям этой Услуги, что эти третьи лица имеют доступ к их Личной информации. Причина в том, чтобы выполнять возложенные на них задачи от нашего имени. Однако они обязаны не разглашать и не использовать информацию для каких-либо других целей.\nБезопасность\nМы ценим ваше доверие к предоставлению нам вашей Личной информации, поэтому мы стремимся использовать коммерчески приемлемые средства ее защиты. Но помните, что ни один метод передачи через Интернет или метод электронного хранения не является на 100% безопасным и надежным, и мы не можем гарантировать его абсолютную безопасность.\nСсылки на другие сайты\nДанная Служба может содержать ссылки на другие сайты. Если вы нажмете на стороннюю ссылку, вы будете перенаправлены на этот сайт. Обратите внимание, что эти внешние сайты не управляются нами. Поэтому мы настоятельно рекомендуем вам ознакомиться с Политикой конфиденциальности этих веб-сайтов. Мы не контролируем и не несем никакой ответственности за контент, политику конфиденциальности или действия любых сторонних сайтов или служб.\nКонфиденциальность детей\nЭти Услуги не предназначены для лиц младше 13 лет. Мы сознательно не собираем личную информацию от детей в возрасте до 13 лет. В случае, если мы обнаружим, что ребенок в возрасте до 13 лет предоставил нам личную информацию, мы немедленно удалим ее с наших серверов. Если вы являетесь родителем или опекуном и знаете, что ваш ребенок предоставил нам личную информацию, свяжитесь со мной/нами, чтобы мы смог выполнить необходимые действия.\nИзменения в настоящей Политике конфиденциальности\nМы можем время от времени обновлять нашу Политику конфиденциальности. Таким образом, вам рекомендуется периодически просматривать эту страницу на предмет любых изменений. Мы уведомим вас о любых изменениях, разместив новую Политику конфиденциальности на этой странице.\nЭта политика действительна с 15 ноября 2023 г.\nСвязаться с нами\nЕсли у вас есть какие-либо вопросы или предложения относительно нашей Политики конфиденциальности, не стесняйтесь обращаться к нам по адресу .\nЭта страница политики конфиденциальности была создана на сайте Privacypolicytemplate.net и изменена/создана генератором политики конфиденциальности приложений.\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      if (!licenceAgreementGlobalRow!.condition)
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Рустем Ахмеров создал приложение как бесплатное. Данная УСЛУГА предоставляется Рустемом Ахмеровым бесплатно и предназначена для использования как есть.\nЭта страница используется для информирования посетителей о нашей политике в отношении сбора, использования и раскрытия Персональной информации, если кто-либо решил использовать нашу Службу.\nЕсли вы решите использовать наш Сервис, вы соглашаетесь на сбор и использование информации в соответствии с этой политикой. Персональная информация в приложении не собирается.\nТермины, используемые в настоящей Политике конфиденциальности, имеют те же значения, что и в наших Условиях использования, которые доступны по адресу, если иное не указано в настоящей Политике конфиденциальности.\nСбор и использование информации\nДля более удобного использования нашего Сервиса мы можем потребовать от вас предоставить нам определенную личную информацию, например имя пользователя, э/адрес. Информацию, которую мы запрашиваем, будет сохраняться на вашем устройстве и не собираться нами каким-либо образом.\nДанные журнала\nЯ хочу сообщить вам, что всякий раз, когда вы используете мой Сервис, в случае ошибки в приложении я не собираю данные и информацию (через сторонние продукты) на вашем телефоне под названием «Данные журнала».\nПеченье\nФайлы cookie — это файлы с небольшим объемом данных, которые обычно используются в качестве анонимных уникальных идентификаторов. Они отправляются в ваш браузер с веб-сайтов, которые вы посещаете, и сохраняются во внутренней памяти вашего устройства.\nДанная Служба не использует эти файлы cookie явно. \nПоставщики услуг\nМы можем нанимать сторонние компании и частных лиц по следующим причинам:\n•\tДля облегчения нашего Сервиса;\n•\tДля предоставления Услуги от нашего имени;\n•\tДля оказания услуг, связанных с Сервисом; или\n•\tЧтобы помочь нам проанализировать, как используется наш Сервис.\nМы хотим сообщить пользователям этой Услуги, что эти третьи лица имеют доступ к их Личной информации. Причина в том, чтобы выполнять возложенные на них задачи от нашего имени. Однако они обязаны не разглашать и не использовать информацию для каких-либо других целей.\nБезопасность\nМы ценим ваше доверие к предоставлению нам вашей Личной информации, поэтому мы стремимся использовать коммерчески приемлемые средства ее защиты. Но помните, что ни один метод передачи через Интернет или метод электронного хранения не является на 100% безопасным и надежным, и мы не можем гарантировать его абсолютную безопасность.\nСсылки на другие сайты\nДанная Служба может содержать ссылки на другие сайты. Если вы нажмете на стороннюю ссылку, вы будете перенаправлены на этот сайт. Обратите внимание, что эти внешние сайты не управляются нами. Поэтому мы настоятельно рекомендуем вам ознакомиться с Политикой конфиденциальности этих веб-сайтов. Мы не контролируем и не несем никакой ответственности за контент, политику конфиденциальности или действия любых сторонних сайтов или служб.\nКонфиденциальность детей\nЭти Услуги не предназначены для лиц младше 13 лет. Мы сознательно не собираем личную информацию от детей в возрасте до 13 лет. В случае, если мы обнаружим, что ребенок в возрасте до 13 лет предоставил нам личную информацию, мы немедленно удалим ее с наших серверов. Если вы являетесь родителем или опекуном и знаете, что ваш ребенок предоставил нам личную информацию, свяжитесь со мной/нами, чтобы мы смог выполнить необходимые действия.\nИзменения в настоящей Политике конфиденциальности\nМы можем время от времени обновлять нашу Политику конфиденциальности. Таким образом, вам рекомендуется периодически просматривать эту страницу на предмет любых изменений. Мы уведомим вас о любых изменениях, разместив новую Политику конфиденциальности на этой странице.\nЭта политика действительна с 15 ноября 2023 г.\nСвязаться с нами\nЕсли у вас есть какие-либо вопросы или предложения относительно нашей Политики конфиденциальности, не стесняйтесь обращаться к нам по адресу https://t.me/+cpzJMNZGb0s4Mzky.\nЭта страница политики конфиденциальности была создана на сайте Privacypolicytemplate.net и изменена/создана генератором политики конфиденциальности приложений.\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
