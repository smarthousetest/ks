import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                  "Тест смены языка ${AppLocalizations.of(context)?.language}"),
              ElevatedButton(
                  onPressed: () {
                    print(AppLocalizations.of(context));
                    print(Platform.localeName);
                    print("${AppLocalizations.of(context)?.helloWorld}");
                  },
                  child: Text("${AppLocalizations.of(context)?.localeName}"))
            ],
          ),
        ),
      ),
    );
  }
}
