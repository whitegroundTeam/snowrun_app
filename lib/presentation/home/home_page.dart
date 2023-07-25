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
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.white,
            title: Text('Record', style: TextStyle(color: Colors.black),),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: (){
                          context.go('/result');
                        },
                        child: Container(
                          color: Colors.yellow,
                          height: 80,
                          alignment: Alignment.center,
                          child: Text('기록 ${index}'),
                        ),
                      ),
                    );
                  },
                  childCount: 10
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            context.go('/recording');
          },
        backgroundColor: Colors.black,
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}