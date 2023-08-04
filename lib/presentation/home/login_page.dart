import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final hiveProvider = getIt<HiveProvider>();
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: selectedColor,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<UserBloc>(),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    const Center(
                      child: Text(
                        '누구인가요?',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    _buildMember(
                        'assets/pngs/julie_avatar.png', "쥴리", Colors.yellow),
                    _buildMember(
                        'assets/pngs/dan_avatar.png', "댄", Colors.green),
                    _buildMember(
                        'assets/pngs/kathlyn_avatar.png', "케틀린", Colors.pink),
                    _buildMember(
                        'assets/pngs/luman_avatar.png', "루만", Colors.blue),
                  ],
                ),
              ),
            );
          },
        ),

      ),
    );
  }

  _buildMember(String avatarPath, String name, Color borderColor) {
    return BlocProvider(
      create: (context) => getIt<UserBloc>(),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state){
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: CommonDetector(
              onTap: () {
                print('${context
                    .read<UserBloc>()
                    .state
                    .users}');
                setState(() {
                  selectedColor = borderColor;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor, width: 8.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      avatarPath,
                      width: 72,
                      height: 72,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )

    );
  }
}
