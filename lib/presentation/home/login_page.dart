import 'package:flutter/material.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  final hiveProvider = getIt<HiveProvider>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('누구인가요?', style: TextStyle(fontSize: 40),),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12)
                ),
                height: 100,
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/pngs/julie_avatar.png'),
                    const Text('쥴리', style: TextStyle(fontSize: 24),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)
                ),
                height: 100,
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/pngs/dan_avatar.png'),
                    const Text('댄', style: TextStyle(fontSize: 24),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                    borderRadius: BorderRadius.circular(12)
                ),
                height: 100,
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/pngs/kathlyn_avatar.png'),
                    const Text('캐틀린', style: TextStyle(fontSize: 24),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                ),
                height: 100,
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/pngs/luman_avatar.png'),
                    const Text('루만', style: TextStyle(fontSize: 24),)
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}