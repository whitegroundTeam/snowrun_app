// ignore_for_file: unused_field

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/profile/profile_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/user/model/snow_ball_profile_image.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';

class EditProfileImagePage extends StatefulWidget {
  const EditProfileImagePage({super.key});

  @override
  State createState() => EditProfileImagePageState();
}

class EditProfileImagePageState extends State<EditProfileImagePage> {
  final profileBloc = getIt<ProfileBloc>();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _storage = const FlutterSecureStorage();

  SnowBallProfileImage? selectedSnowBallProfileImage;
  String? selectedProfileImageUrl;

  bool isShowLoading = false;

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 4;
    return MultiBlocProvider(
      providers: [
        BlocListener<ProfileBloc, ProfileState>(
          bloc: profileBloc,
          listener: (context, state) {
            if (state.status == UserStatus.successUpdateProfileImage ||
                state.status == UserStatus.failureUpdateProfileImage) {
              context.read<AuthBloc>().add(const AuthEvent.checkAuth());
            }
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>(),
          listener: (context, state) {
            setState(() {
              isShowLoading = false;
            });
            context.pop();
          },
        ),
        BlocProvider<ProfileBloc>(
            create: (context) => profileBloc
              ..add(const ProfileEvent.getSnowBallProfileImages())),
      ],
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CommonAppBar(
            appBarType: AppBarType.back,
            isShowShadow: false,
            isSliver: false,
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                selectedProfileImageUrl?.isNotEmpty == true
                    ? CommonDetector(
                        needAuth: true,
                        onTap: () {},
                        child: Hero(
                          tag: "profileImage",
                          child: Center(
                              child: FadeIn(
                            duration: const Duration(milliseconds: 500),
                            child: CommonNetworkImage(
                              height: previewProfileImageHeight,
                              width: previewProfileImageHeight,
                              imageBackgroundColor: Colors.transparent,
                              imageUrl: selectedProfileImageUrl ?? "",
                            ),
                          )),
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
                  height: 24,
                ),
                selectedProfileImageUrl != null
                    ? Container(
                        constraints: const BoxConstraints(minHeight: 56),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: const Text(
                          "이 눈송이는 말이죠.. 독특한 어떤 스토리가 있어요",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppStyle.secondaryTextColor,
                              height: 1.4,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    : Container(
                        constraints: const BoxConstraints(minHeight: 56),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 48,
                        ),
                        child: const Text(
                          "어떤 눈송이가 마음에 드세요?",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppStyle.secondaryTextColor,
                              height: 1.4,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                const SizedBox(
                  height: 48,
                ),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    final snowBallProfileImages = state.snowBallProfileImages;
                    return Expanded(
                      child: BounceInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: AppStyle.secondaryBackground,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32),
                              topLeft: Radius.circular(32),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Visibility(
                                visible: state.status ==
                                    UserStatus.progressGetSnowBallProfileImages,
                                child: const Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: AppStyle.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GridView.builder(
                                physics: bouncingScrollPhysics,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, // 각 행에 표시할 항목의 수
                                  crossAxisSpacing: 4.0, // 가로 간격
                                  mainAxisSpacing: 4.0, // 세로 간격
                                  childAspectRatio: 1.0, // 항목의 가로 세로 비율
                                ),
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  left: 12,
                                  right: 12,
                                  bottom: 72,
                                ),
                                itemCount: snowBallProfileImages?.length ?? 0,
                                itemBuilder: (context, index) {
                                  final snowBallProfileImage =
                                      snowBallProfileImages?[index];
                                  return CommonDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSnowBallProfileImage =
                                            snowBallProfileImage;
                                        selectedProfileImageUrl =
                                            snowBallProfileImage?.url
                                                .getOrCrash();
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      child: CommonNetworkImage(
                                        height: 48,
                                        width: previewProfileImageHeight,
                                        imageBackgroundColor:
                                            Colors.transparent,
                                        imageUrl: snowBallProfileImage?.url
                                                .getOrCrash() ??
                                            "",
                                      ),

                                      // Image.asset(
                                      //   'assets/webp/profile_snow_ball_$index.webp',
                                      //   height: 48,
                                      //   width: previewProfileImageHeight,
                                      // ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
            Positioned(
              bottom: 0,
              // left: 24,
              // right: 24,
              child: AnimatedOpacity(
                opacity: selectedProfileImageUrl?.isNotEmpty == true ? 1.0 : 0,
                duration: const Duration(milliseconds: 500),
                child: CommonButton(
                  textColor: AppStyle.white,
                  iconColor: AppStyle.white,
                  buttonColor: AppStyle.background.withOpacity(0.9),
                  text: "저장하기",
                  onTap: () {
                    if (selectedSnowBallProfileImage != null) {
                      setState(() {
                        isShowLoading = true;
                      });
                      profileBloc.add(
                        ProfileEvent.updateProfileImage(
                            selectedSnowBallProfileImage?.key.getOrCrash() ??
                                ""),
                      );
                    }
                  },
                ),
              ),
            ),
            Positioned(
              top: 56,
              left: 0,
              right: 0,
              bottom: 0,
              child: Visibility(
                visible: isShowLoading,
                child: const CommonLoading(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
