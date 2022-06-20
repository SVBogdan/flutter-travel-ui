import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubbit/app_cubits.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/homepage.dart';
import 'package:flutter_cubit/pages/nav/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';
import 'app_cubit_states.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        if (state is DetailState) {
          return DetailPage();
        }
        if (state is WelcomState) {
          return WelcomePage();
        }
        if (state is LoadedState) {
          return MainPage();
        }
        if (state is LoadingState) {
          return Center(
            child: const CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      },
    ));
  }
}
