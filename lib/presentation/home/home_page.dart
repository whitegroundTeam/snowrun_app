import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _storage = const FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            child: Column(
              children: [
                // TextFormField(
                //   controller: _nameController,
                //   decoration: const InputDecoration(labelText: '이름'),
                //   validator: (value){
                //     if(value!.isEmpty) {
                //       return '이름을 입력해 주세요';
                //     }
                //     return null;
                //   },
                // ),
                // TextFormField(
                //   controller: _passwordController,
                //   decoration: const InputDecoration(labelText: '비밀번호'),
                //   validator: (value){
                //     if(value!.isEmpty) {
                //       return '비밀번호를 입력해 주세요';
                //     }
                //     return null;
                //   },
                //   obscureText: true,
                // ),
                const SizedBox(
                  height: 12,
                ),
                CommonDetector(
                    onTap: () {
                      showToast("호로로롤로롤");
                      // context.go('/login');
                    },
                    // onPressed: (){
                    //   // if(_formKey.currentState!.validate()){
                    //   //   _login();
                    //   // }
                    //   context.go('/login');
                    // },
                    child: Container(
                        width: 300,
                        height: 64,
                        color: Colors.pink,
                        child: Center(
                          child: const Text(
                            '로그인',
                            style: TextStyle(color: AppStyle.white),
                          ),
                        ))),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              context.go('/recording');
            },
            child: Container(
              padding: const EdgeInsets.all(0.0),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                Icons.play_arrow,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    )
        // const SliverAppBar(
        //   backgroundColor: Colors.white,
        //   title: Text('Record', style: TextStyle(color: Colors.black),),
        // ),
        // SliverList(
        //     delegate: SliverChildBuilderDelegate(
        //             (context, index) {
        //           return Card(
        //             margin: const EdgeInsets.all(10),
        //             child: GestureDetector(
        //               onTap: (){
        //                 context.go('/result');
        //               },
        //               child: Container(
        //                 color: Colors.yellow,
        //                 height: 80,
        //                 alignment: Alignment.center,
        //                 child: Text('기록 ${index}'),
        //               ),
        //             ),
        //           );
        //         },
        //         childCount: 10
        //     )
        // )
        // floatingActionButton: FloatingActionButton(
        //     onPressed: (){
        //       context.go('/recording');
        //     },
        //   backgroundColor: Colors.black,
        //   child: const Icon(Icons.navigate_next),
        // ),
        );
  }
}
