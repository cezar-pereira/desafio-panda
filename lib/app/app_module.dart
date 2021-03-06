import 'package:desafio_pandapay/app/app_controller.dart';
import 'package:desafio_pandapay/app/modules/fisrt_access_page/fisrt_access_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:desafio_pandapay/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => FisrtAccessPage(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
