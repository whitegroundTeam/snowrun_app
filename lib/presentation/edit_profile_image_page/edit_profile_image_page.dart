// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class EditProfileImagePage extends StatefulWidget {
  const EditProfileImagePage({super.key});

  @override
  State createState() => EditProfileImagePageState();
}

class EditProfileImagePageState extends State<EditProfileImagePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _storage = const FlutterSecureStorage();

  int? selectedProfileImageIndex;

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 4;
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 100,
        ),

        selectedProfileImageIndex != null
            ? CommonDetector(
                needAuth: true,
                onTap: () {},
                child: Hero(
                  tag: "profileImage",
                  child: Center(
                    child: Image.asset(
                      'assets/webp/profile_snow_ball_$selectedProfileImageIndex.webp',
                      height: previewProfileImageHeight,
                      width: previewProfileImageHeight,
                    ),
                  ),
                ),
              )
            :
            //TODO : 아바타 user
            CommonDetector(
                needAuth: true,
                onTap: () {},
                child: Hero(
                  tag: "profileImage",
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/webp/profile_placeholder.webp',
                          height: previewProfileImageHeight,
                          width: previewProfileImageHeight,
                          color: AppStyle.secondaryBackground,
                        ),
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 36,
                                  color: AppStyle.actionIconColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
        const SizedBox(
          height: 12,
        ),
        selectedProfileImageIndex != null
            ? const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Text(
                  "이 눈송이는 말이죠.. 독특한 그런 무언가의 스토리가 있어요",
                  style: TextStyle(
                      fontSize: 18,
                      color: AppStyle.secondaryTextColor,
                      height: 1.2,
                      fontWeight: FontWeight.w500),
                ),
              )
            : const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Text(
                  "어떤 눈송이가 마음에 드세요?",
                  style: TextStyle(
                      fontSize: 18,
                      color: AppStyle.secondaryTextColor,
                      height: 1.2,
                      fontWeight: FontWeight.w500),
                ),
              ),

        const SizedBox(
          height: 84,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 16,
            ),
            decoration: const BoxDecoration(
              color: AppStyle.secondaryBackground,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
              ),
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 각 행에 표시할 항목의 수
                crossAxisSpacing: 10.0, // 가로 간격
                mainAxisSpacing: 10.0, // 세로 간격
                childAspectRatio: 1.0, // 항목의 가로 세로 비율
              ),
              padding: const EdgeInsets.all(10.0),
              itemCount: 11,
              itemBuilder: (context, index) {
                return CommonDetector(
                  onTap: () {
                    setState(() {
                      selectedProfileImageIndex = index;
                    });
                  },
                  child: Container(
                    // padding: EdgeInsets.all(8),
                    child: Image.asset(
                      'assets/webp/profile_snow_ball_$index.webp',
                      // height: 48,
                      // width: previewProfileImageHeight,
                    ),
                  ),
                );
              },
            ),
          ),
        )

        // const SizedBox(
        //   height: 32,
        // ),
        // Center(
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     // decoration: BoxDecoration(
        //     //   borderRadius:
        //     //   BorderRadius.circular(16),
        //     //   // borderSide: const BorderSide(color: Colors.white, width: 2),
        //     //   // badgeColor:
        //     //   // const Color(0xffDA1E28),
        //     // ),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(4),
        //       child: Stack(
        //         children: [
        //           const BlurHash(hash: "LHTOE1q8g1oxqMeWf7e;gdfjfQfQ",),
        //           Container(
        //             margin: const EdgeInsets.all(2),
        //             color: AppStyle.background,
        //           )
        //           // Positioned(
        //           //   right: 4, left: 4, top: 4, bottom: 4,
        //           //   child: Container(
        //           //     color: AppStyle.background,
        //           //   ),),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    )
        //     Container(
        //       width: 100,
        //       height: 100,
        //       padding: const EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //         gradient: const LinearGradient(
        //           begin: Alignment.bottomRight,
        //           end: Alignment.topLeft,
        //           colors: [
        //             Color(0xff4dabf7),
        //             Color(0xffda77f2),
        //             Color(0xfff783ac),
        //           ],
        //         ),
        //         borderRadius: BorderRadius.circular(500),
        //       ),
        //       child: const CircleAvatar(
        //         radius: 250,
        //         backgroundImage: AssetImage("assets/images/person-winter.png"),
        //       ),
        //     ),
        //     GestureDetector(
        //       onTap: () {
        //         context.push('/recording');
        //       },
        //       child: Container(
        //         padding: const EdgeInsets.all(0.0),
        //         height: 100,
        //         width: 100,
        //         decoration: BoxDecoration(
        //             color: Colors.black,
        //             borderRadius: BorderRadius.circular(100)),
        //         child: const Icon(
        //           Icons.play_arrow,
        //           size: 80,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ],
        // )
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
        //                 context.push('/result');
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
        //       context.push('/recording');
        //     },
        //   backgroundColor: Colors.black,
        //   child: const Icon(Icons.navigate_next),
        // ),
        );
  }
}
