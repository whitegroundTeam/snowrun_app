import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}


class HomePageState extends State<HomePage>{
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _storage = const FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(
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
                      const SizedBox(height: 12,),
                      ElevatedButton(
                          onPressed: (){
                            // if(_formKey.currentState!.validate()){
                            //   _login();
                            // }
                            context.go('/login');
                          },
                          child: const Text('로그인')
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100,),
                GestureDetector(
                  onTap: (){
                    context.go('/recording');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(0.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Icon(Icons.play_arrow, size:80 ,color: Colors.white,),
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

  Future<void> _login() async {
    final response = await http.post(
      Uri.parse('https://서버url'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': _nameController.text,
        'password': _passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the token
      var token = jsonDecode(response.body)['token'];
      await _storage.write(key: 'auth_token', value: token);
      context.go('/');
    } else {
      // If response was not OK, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('로그인 실패'),
        ),
      );
    }
  }

}