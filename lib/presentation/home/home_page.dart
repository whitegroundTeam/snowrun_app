import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(
            child: GestureDetector(
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
                child: const Icon(Icons.navigate_next, size:100 ,color: Colors.white,),
              ),
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