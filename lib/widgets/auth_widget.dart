import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/cubit/auth/auth_cubit.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("${AppLocalizations.of(context)?.togetaccess}"),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().signIn();
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "${AppLocalizations.of(context)?.login} / ${AppLocalizations.of(context)?.registration}",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
