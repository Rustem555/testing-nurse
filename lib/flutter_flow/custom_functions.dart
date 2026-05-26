import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime data(
  DateTime? start,
  int durationofaccess,
) {
  // write a custom function to return a date 40 days older than the input date value
  return start!.subtract(Duration(days: -durationofaccess));
}

int? nextNumber(int? number) {
  var nextNumber = number! + 1;
  return nextNumber;
}

String? createHTML(String confirmationToken) {
  String html = '''
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Прием платежа с помощью виджета ЮKassa</title>
        <script src="https://yookassa.ru/checkout-widget/v1/checkout-widget.js"></script>
      </head>
      <body>
        <div id="payment-form"></div>
        <script>
          //Инициализация виджета. Все параметры обязательные.
          const checkout = new window.YooMoneyCheckoutWidget({
            confirmation_token: '$confirmationToken', //Токен, который перед проведением оплаты нужно получить от ЮKassa
            //return_url: 'https://google.com', //Ссылка на страницу завершения оплаты, это может быть любая ваша страница
            error_callback: function(error) {
              console.log(error)
            }
          });
          //Отображение платежной формы в контейнере
          checkout.render('payment-form');
        </script>
      </body>
    </html> 
  ''';
  return html;
}

String jsonpathtostring(String? json) {
  return json.toString();
}

int? price(double? inPrice) {
  // the function returns a number without decimal places
  if (inPrice == null) {
    return null;
  } else {
    return inPrice.toInt();
  }
}

String? randomEmail(
  String? xx,
  int? yy,
) {
  // function returns xy@gmail.com, where “x” and “y” are incoming string and integer
  return '$xx$yy@gmail.com';
}
