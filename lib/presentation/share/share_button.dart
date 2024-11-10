import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:share_plus/share_plus.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/auth/auth_bloc.dart';
import 'package:doortoout/application/user/user_bloc.dart';
import 'package:doortoout/domain/riding/riding_room.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/text/title_text.dart';
import 'package:doortoout/presentation/core/toast/common_toast.dart';
import 'package:doortoout/utils/links.dart';

class ShareButton extends StatefulWidget {
  final RidingRoom? ridingRoom;

  const ShareButton({super.key, this.ridingRoom});

  @override
  State createState() => ShareButtonState();
}

class ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.secondaryBackground.withOpacity(0.95),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(4),
        ),
      ),
      child: CommonDetector(
        onTap: () async {
          final userName =
              context.read<AuthBloc>().state.user?.nickname.getOrCrash();
          final ridingRoomName =
              widget.ridingRoom?.name.getOrCrash().isNotEmpty == true
                  ? "[${widget.ridingRoom?.name.getOrCrash()}]"
                  : "";


          int? ridingRoomId = widget.ridingRoom?.id.getOrCrash();
          if(widget.ridingRoom != null && ridingRoomId != null) {
            String shareLink = getShareRidingRoomLink(ridingRoomId);

            final shareMessage =
                "$userName님이 $ridingRoomName라이딩 방에 초대하셨습니다.\n\n\n아래 링크를 클릭하여 도어투아웃의 라이딩 방에 참여하고 함께 타보세요!\n\n<초대 링크>\n$shareLink";
            final result = await Share.shareWithResult(shareMessage);

            if (result.status == ShareResultStatus.success) {
              showToast(context, "공유 링크가 복사되었습니다 😆");
            }
          } else {
            showToast(context, "라이딩 방 공유 링크 생성에 오류가 발생하였습니다.");
          }
        },
        child: const Padding(
          padding: EdgeInsets.only(
            left: 12,
            right: 30,
            top: 8,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                title: "공유하고",
                fontSize: 16,
                color: AppStyle.white,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 4,
              ),
              TitleText(
                title: "함께타기!",
                fontSize: 16,
                color: AppStyle.accentColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
