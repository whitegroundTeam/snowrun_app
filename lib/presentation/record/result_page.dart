import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultPage extends StatefulWidget{
  const ResultPage({super.key});

  @override
  State createState() => ResultPageState();
}

class ResultPageState extends State<ResultPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            leading: BackButton(color: Colors.black,),
            backgroundColor: Colors.white,
            title: Text('Result', style: TextStyle(color: Colors.black),),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 400,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: (){
                          context.push('/result');
                        },
                        child: Container(
                          color: Colors.yellow,
                          height: 80,
                          alignment: Alignment.center,
                          child: Text('영역 $index'),
                        ),
                      ),
                    );
                  },
                  childCount: 10
              )
          )
        ],
      ),
    );
  }
}