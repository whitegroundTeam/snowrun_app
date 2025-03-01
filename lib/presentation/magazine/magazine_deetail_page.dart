import 'package:animate_do/animate_do.dart';
import 'package:doortoout/application/magazine/magazine_bloc.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/magazine/magazine.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/presentation/magazine/test_contents_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:doortoout/application/riding/riding_detail/riding_detail_bloc.dart';
import 'package:doortoout/application/riding/riding_form/riding_form_bloc.dart';
import 'package:doortoout/domain/riding/riding_room.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_loading.dart';
import 'package:doortoout/presentation/core/common_network_image.dart';
import 'package:doortoout/presentation/core/common_scaffold.dart';
import 'package:doortoout/presentation/core/loading_dialog.dart';
import 'package:doortoout/presentation/core/scroll_physics.dart';
import 'package:doortoout/presentation/core/text/title_text.dart';
import 'package:doortoout/presentation/core/toast/common_toast.dart';
import 'package:doortoout/presentation/home/home_page.dart';
import 'package:doortoout/presentation/riding/edit_riding_room_name_bottom_sheet.dart';
import 'package:doortoout/presentation/share/share_button.dart';

class MagazineDetailPage extends StatefulWidget {
  final Magazine magazine;
  final int testIndex;

  const MagazineDetailPage({
    super.key,
    required this.magazine,
    required this.testIndex,
  });

  @override
  State createState() => MagazineDetailPageState();

  static pushMagazineDetailPage(
      BuildContext context, Magazine magazine, int testIndex,
      {Function? onResult}) {
    context.push(
      '/magazineDetail',
      extra: {
        'magazine': magazine,
        'testIndex': testIndex,
      },
    ).then((value) => onResult?.call());
  }
}

class MagazineDetailPageState extends State<MagazineDetailPage> {
  final _magazineBloc = getIt<MagazineBloc>();

  Magazine? magazine;

  /// TEST DATA
  final images = [
    "https://doortoout.s3.ap-northeast-2.amazonaws.com/operate/magazine_test/magazine_1.JPG",
    "https://doortoout.s3.ap-northeast-2.amazonaws.com/operate/magazine_test/magazine_2.JPG",
    "https://doortoout.s3.ap-northeast-2.amazonaws.com/operate/magazine_test/magazine_0.png"
  ];
  final subtitles = ["R&T", "GO 대관령트레일런", "PEAKFFICE"];
  final titles = [
    "알앤티버거하우스이야기",
    "러닝의 새로운 기준, Go대관령틀레일런",
    "해발고도 777m, 꼭대기에 위치한 오피스"
  ];
  final descriptions = ["11/30", "9/3", "5/15"];

  late LoadingDialog loader = LoadingDialog(context);
  bool showLoading = true;

  final List<TestContentsModel> testContents = [];

  @override
  void initState() {
    super.initState();

    if (widget.testIndex == 0) {
      testContents.add(TestContentsModel(
        title: StringVO("간략한소개"),
        content: StringVO(
            '하얀 설원이 펼쳐진 대관령에서, 스키를 타러 왔다가 아예 정착해버린 두 사람이 있습니다. 자연 속 삶과 수제버거에 대한 진심, 그리고 반려견과 함께 만드는 그들만의 문화까지. 알앤티버거하우스가 전해주는 행복한 순간들을 만나보세요.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("대관령에서의삶"),
        content: StringVO(
            '스키 시즌이면 늘 설레는 마음으로 대관령에 찾아오던 두 사람은 어느 날 이렇게 생각했습니다.\n\n"여기서 살아보면 어떨까?"\n\n그렇게 한 시즌의 손님에서 주민이 되었고, 국민의 숲과 선자령, 용평리조트를 품은 대관령이 이제 두 사람의 삶의 무대가 되었습니다. \n가장 아름다운 계절로 "겨울"을 꼽을 만큼 이곳의 자연과 레저를 즐기지만, 동시에 생활 면에서는 쉽지 않은 부분도 많았다고 합니다. "4월 비수기는 정말 힘들죠. 게다가 먹을 곳이 마땅치 않아 우리가 직접 해결해버리자고 결심했어요!"\n그 결과 탄생한 것이 바로 알앤티버거하우스입니다.매주 트레킹을 즐기고, 반려견 리앙과 타이슨을 데리고 산책길을 거니는 그들의 일상은 생각보다 바쁘지만, 마음만은 늘 여유롭다고 합니다.\n"대관령은 시골 같으면서도 도시보다 더 세련된 느낌이 있어요." 맑은 공기와 광활한 자연, 그리고 알앤티버거하우스의 성장 덕분에 더없이 의미 있는 삶을 누리고 있죠.머지않아 직접 지은 집에서 두 반려견과 함께 살겠다는 소박하지만 확실한 꿈도 품고 있답니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("알앤티버거하우스의시작"),
        content: StringVO(
            '2024년 1월 문을 연 알앤티버거하우스는 시작부터 각오가 남달랐습니다.\n"진짜 수제버거가 뭔지 보여드리겠다는 마음으로 시작했어요." 대표 메뉴인 RT BURGER를 필두로 베이컨, 더블, 칠리핫, 치폴레 쉬림프 버거 등 풍성한 라인업을 자랑합니다. 처음 방문했다면 RT 버거나 베이컨 버거부터 맛보는 것을 추천한다고 하네요. "특히 윙앤스틱과 치폴레 쉬림프 버거는 꼭 드셔보셔야 해요!" 맛의 비결은 꼼꼼하게 고른 신선한 재료와 모든 과정에 담긴 정성입니다. 버거를 먹는 법도 특별합니다."포크, 나이프? 잠시 잊으세요. 손으로 한입 가득 베어무는 그 맛이 진짜거든요. 조금 묻으면 어때요, 맛있으면 된 거죠!"'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("시그니처‘맛+예술’"),
        content: StringVO(
            '버거를 굽는 틈틈이, 매장 주인은 직접 그림을 그립니다. 알앤티버거하우스의 벽을 장식하는 작품들은 하나같이 독특한 분위기와 색감을 뿜어냅니다. 방문할 때마다 새로운 그림이 걸려 있을지도 모른다고 하니, 버거를 기다리며 예술 감상을 곁들이는 것 역시 알앤티만의 특별한 재미입니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("함께즐기는맥주문화"),
        content: StringVO(
            '알앤티는 국내외 수상 경력을 가진 화이트크로우 브루어리와 협업해 수제 맥주를 선보입니다. 라거부터 골든에일, IPA, 브라운(스타우트)까지, 계절마다 달라지는 맥주 라인업은 방문할 때마다 색다른 즐거움을 선사하죠. 가벼운 라거로 시작해 점차 도전적인 맛을 즐겨보는 것도 좋습니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("‘블루리본’의의미"),
        content: StringVO(
            '대관령에서 수제버거집을 한다고 했을 때, 주변의 걱정 섞인 시선도 분명 있었습니다. 하지만 알앤티버거하우스가 블루리본 서베이를 획득하던 날, 그 모든 우려가 자부심으로 바뀌었죠. “그때 느꼈어요. 우리가 잘하고 있구나!”'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("진짜수제버거,맛있게진심을담다"),
        content: StringVO(
            '손님 중 한 명이 “행복해지는 맛이네요!”라고 말하고, “여기에 생겨줘서 고맙다”고 덧붙였을 때, 주인 부부는 비로소 깨달았습니다. "아, 우리가 만드는 버거는 단순한 식사가 아니라, 사람들에게 행복을 주는 맛이구나." 그 순간부터 알앤티버거하우스는 더욱 단단한 의지를 갖게 되었습니다.\n\n묵묵히, 그러나 누구보다도 진심을 담아 ‘진짜 수제버거’를 대접하겠다는 그 다짐을 지금도 지키고 있습니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("마지막한마디"),
        content: StringVO(
            '“문 밖에서 보면 썬팅이 진해 잘 보이지 않을 거예요. 하지만 문을 열면, 행복해지는 수제버거가 여러분을 기다리고 있습니다. 친구들과, 가족들과, 반려견과 함께 알앤티버거하우스에서 잊지 못할 시간을 만들어보세요!”'),
      ));
    } else if (widget.testIndex == 1) {
      testContents.add(TestContentsModel(
        title: StringVO("간략한소개"),
        content: StringVO(
            '고도 700m의 대관령에서 펼쳐진 특별한 러닝 축제! 완벽하게 설계된 코스, 아름다운 풍경, 그리고 레전드 러너들의 열정을 한 번에 경험할 수 있는 절호의 기회였습니다. 지금, 새로운 러닝의 시작을 대관령에서 만나보세요.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("고도700m에서만나는특별한여정"),
        content: StringVO(
            '맑은 공기를 들이마시며 반복되는 오르막과 내리막을 달리는 대관령 트레일 코스. 근육의 밸런스부터 심폐 지구력까지 고루 단련할 수 있는 최적의 러닝 무대입니다. 제1회 GO 대관령 트레일런은 아름다운 자연 풍광, 섬세하게 설계된 코스, 그리고 열정 넘치는 러너들로 가득한 축제의 장이었습니다. 이곳에서 달리는 순간, 대관령의 매력이 온몸으로 전해져 발걸음마다 특별함이 더해집니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("레전드들의숨결을따라달리다"),
        content: StringVO(
            '대관령은 단지 경치 좋은 러닝 코스가 전부가 아닙니다. 올림픽 메달리스트와 국가대표 마라토너들이 이곳의 지형과 고도를 활용해 심폐 능력을 키워 왔으니까요. GO 대관령 트레일런에 참여한다는 것은 곧 그들의 흔적을 따라 달리는 뜻깊은 경험입니다. 레전드 러너들이 걸어간 길 위에서, 나만의 새로운 기록을 써 내려가 보세요.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("WHY대관령?(대관령이특별한이유)"),
        content: StringVO(
            'HAPPY 700m, 완벽한 고도: 해발 700m에서 느끼는 가볍고 리드미컬한 달리기의 쾌감\n- 사계절을 품은 풍경: 봄의 싱그러움, 여름의 생동감, 가을의 황금빛, 겨울의 설경까지 모두 누릴 수 있는 천혜의 자연\n- 러너를 위한 코스: 도전적인 오르막과 내리막, 숲과 들판을 가로지르는 트레일의 매력은 도심에서 누릴 수 없는 짜릿함을 선사합니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("레전드국가대표러너이명승코치의러닝클래스"),
        content: StringVO(
            '이번 GO 대관령 트레일런에서는 특별히 국가대표 러너 출신인 이명승 코치가 직접 러닝 클래스를 진행했습니다.\n- 실전 훈련 팁부터 부상 예방, 컨디션 관리 노하우까지, 어떤 러너라도 성장할 수 있는 알짜배기 강의였죠.\n- 이 코치를 따라 한 발 한 발 달릴 때마다, 러닝 실력은 물론 스스로에 대한 자신감도 한 단계 올라갑니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("마지막한마디"),
        content: StringVO(
            '“러닝은 끝없는 도전이지만, 대관령에서는 그것이 더욱 특별해집니다. 고도 700m에서 맞이하는 상쾌한 바람과 탁 트인 풍경, 그리고 함께 달리는 사람들의 뜨거운 에너지를 느껴보세요. 당신의 러닝 여정에 새로운 기준이 생길 테니까요.”'),
      ));
    } else {
      testContents.add(TestContentsModel(
        title: StringVO("간략한소개"),
        content: StringVO(
            '서울에서 올라온 청년들이 해발 700m의 대관령에 1주일 만에 만들어낸 ‘픽피스(PEAKFFICE)’. 맑은 공기와 탁 트인 풍경 속에서 탄생한 이 특별한 오피스에서는, ‘묵혀둔 일’을 후딱 해치우고 새로운 아이디어가 마구 솟아나며 청년들의 뜨거운 열정이 눈부시게 펼쳐지고 있습니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("1주일만에탄생한꼭대기사무실"),
        content: StringVO(
            '“연령대가 높은 마을에서 청년들이 일하고 교류할 공간이 부족하다”는 문제의식에서 시작된 PEAKFFICE. 원래라면 ‘그냥 지나칠 수도 있었던’ 시골 마을이었지만, 서울에서 온 청년들은 우연히 비어 있던 공간을 발견하자마자 단 1주일 만에 내부를 직접 꾸며 **“PEAK(정상) + OFFICE(사무실)”**라는 이름의 새로운 업무실험장을 탄생시켰습니다. 고도 700m에 자리한 대관령의 환경이 주는 탁 트인 시야와 맑은 공기는, 창의적인 작업을 위한 최적의 무대가 되어주었죠.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("고도700m,‘묵혀둔일’을해결하는비법"),
        content: StringVO(
            '픽피스에선 매일 기발한 아이디어와 다양한 도전이 움트고 있습니다. “집에서 쓰던 책상, 쓰레기통, 거울, 화분까지 몽땅 옮겨왔다”는 이야기에서 알 수 있듯, 이곳은 **‘스피드 오피스 구축’**의 산물입니다. 특히 PEAKFFICE가 강조하는 ‘묵혀둔 일’이란, “어제도, 오늘도 바쁘다는 핑계로 미루게 된 바로 그 일들”입니다. 어쩌면 아직 완전히 해결하지 못했거나, 머릿속에만 담아둔 채 시작조차 못 해본 것들이죠. 픽피스에선 “적어 보는 것만으로도 충분하니까”라는 철학으로, 누구나 자유롭게 ‘낡은 숙제’를 꺼내고 해결의 실마리를 찾아갑니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("두번의해커톤,전국에서모여든열정"),
        content: StringVO(
            '여름과 가을에 걸쳐 열린 해커톤은 전국 각지에서 사람들이 몰려드는 축제 같은 시간이었습니다. 개발자들은 즉시 써볼 수 있는 서비스를 뚝딱 만들어내고, 창업가들은 새로운 비즈니스 아이디어를 기획해 실제 창업으로 이어지는 경험을 했습니다. 대학생들은 현업자들의 피드백을 받아, 한 단계 더 도약할 기회를 얻었고요. 밤을 새워가며 달린 열정 덕분에 대관령의 차가운 바람도 무더운 열기로 바뀌었다고 할 정도였죠.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("뮤지션팀의즉흥작업:‘자유’가곧영감"),
        content: StringVO(
            '1박 2일 일정으로 대관령을 찾은 뮤지션 팀 역시, 첫날은 마을을 자유롭게 둘러보며 여유를 만끽했습니다. 그리고 다음날, 아침부터 밤까지 온전히 작업에 몰두하여 단 하루 만에 노래를 완성해냈습니다. 맑은 공기와 대관령만의 독특한 바람 냄새, 끝이 보이지 않는 들판에서 오는 해방감이 즉흥적인 멜로디와 가사로 녹아 들어간 것이죠. 결과물은 ‘대관령 특유의 자유로움’ 그 자체였습니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("크리스마스리스와연말감성"),
        content: StringVO(
            '겨울이 성큼 다가오며 눈발이 날리는 날엔, 사무실 안에서 작은 모임을 열어 크리스마스 리스를 함께 만들었습니다. 초록잎과 빨간 열매, 반짝이는 방울 장식이 더해지자, 픽피스 공간 전체가 단숨에 포근한 연말 분위기로 물들었죠. 하얀 눈을 뚫고 들어오는 은은한 빛과 함께, 서로의 손끝에서 전해지는 따뜻함이 한 해의 마무리를 아름답게 장식했습니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("장르불문,무엇이든가능한공간"),
        content: StringVO(
            '픽피스의 가장 큰 매력은 ‘해보고 싶은 일을 바로 시도할 수 있다’는 점입니다. 여기서는 포토 스튜디오를 꾸미든, 요가 클래스를 열든, 한밤중에 DJ 파티를 하든 상관이 없다고 해요. 번뜩 떠오르는 그 순간, 바로 행동에 옮기는 실험 정신이야말로 피크피스가 존재하는 이유이기도 합니다.'),
      ));
      testContents.add(TestContentsModel(
        title: StringVO("마지막한마디"),
        content: StringVO(
            '이곳에서는 “완성”을 꼭 고집하지 않아도 괜찮습니다. 머릿속에 걸려 있었지만 미뤄두었던 ‘묵혀둔 일’을 꺼내어, 대관령의 시원한 바람과 함께 훌훌 털어볼 수 있다면 그걸로 이미 성공적인 시작이니까요. 언제든지 해발 700m 고지에서 새로운 발상을 펼쳐보고 싶다면, 두려움 없이 문을 두드려보세요. “망설이면 재미없어, 지금 이 순간을 잡아봐!” 픽피스에선 모든 것이 가능하고, 언제나 열린 마음으로 당신을 기다리고 있습니다.'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MagazineBloc>(
          create: (context) => _magazineBloc
            ..add(
                MagazineEvent.getMagazine(id: widget.magazine.id.getOrCrash())),
        ),
      ],
      child: CommonScaffold(
        body: BlocBuilder<MagazineBloc, MagazineState>(
          builder: (context, state) {
            if (state.status == DefaultStatus.success ||
                state.status == DefaultStatus.failure) {
              showLoading = false;
            }
            magazine = state.magazine;
            if (magazine == null) {
              return const SizedBox();
            }

            return SingleChildScrollView(
              child: Stack(
                children: [
                  FadeIn(
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).padding.top + 12,
                        ),
                        Row(
                          children: [
                            CommonDetector(
                              onTap: () {
                                context.pop();
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                margin: const EdgeInsets.only(
                                  left: 16,
                                  right: 12,
                                  bottom: 4,
                                  top: 4,
                                ),
                                decoration: BoxDecoration(
                                    color:
                                        AppStyle.background.withOpacity(0.95),
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  'assets/webp/arrow_left.webp',
                                  color: AppStyle.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CommonDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(
                                bottom: 8, top: 8, left: 16, right: 16),
                            height: MediaQuery.sizeOf(context).width,
                            width: MediaQuery.sizeOf(context).width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: CommonNetworkImage(
                                          height:
                                              MediaQuery.sizeOf(context).width,
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          imageUrl: images[widget.testIndex]),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 4.0),
                                              decoration: const BoxDecoration(
                                                color: AppStyle.background,
                                                border: Border(
                                                  right: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                  left: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                  top: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  topRight: Radius.circular(8),
                                                ),
                                              ),
                                              child: Text(
                                                // magazine.title.getOrCrash(),
                                                subtitles[widget.testIndex],
                                                style: AppTextStyle.body01
                                                    .copyWith(
                                                        color: AppStyle.black),
                                              ),
                                            ),
                                            Container(
                                              decoration: const BoxDecoration(
                                                color: AppStyle.background,
                                                border: Border(
                                                  left: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                decoration: const BoxDecoration(
                                                  color: AppStyle.background,
                                                  border: Border(
                                                    right: BorderSide(
                                                      color: AppStyle.black,
                                                      width: 1,
                                                    ),
                                                    // left: BorderSide(
                                                    //   color: AppStyle.black,
                                                    //   width: 1,
                                                    // ),
                                                    top: BorderSide(
                                                      color: AppStyle.black,
                                                      width: 1,
                                                    ),
                                                    bottom: BorderSide(
                                                      color: AppStyle.black,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8)),
                                                ),
                                                child: Text(
                                                  // "즐거운 대관령생활 감자빵을 아시나요? 난 몰라요",
                                                  titles[widget.testIndex],
                                                  style: AppTextStyle.heading01
                                                      .copyWith(
                                                          color:
                                                              AppStyle.black),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 4.0),
                                              decoration: const BoxDecoration(
                                                color: AppStyle.background,
                                                border: Border(
                                                  right: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                  left: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                  bottom: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8),
                                                ),
                                              ),
                                              child: Text(
                                                descriptions[widget.testIndex],
                                                style: AppTextStyle.body01
                                                    .copyWith(
                                                        color: AppStyle.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ListView.builder(
                            physics: neverScrollableScrollPhysics,
                            shrinkWrap: true,
                            itemCount: testContents.length,
                            padding: const EdgeInsets.only(
                              top: 48,
                              left: 24,
                              right: 24,
                            ),
                            itemBuilder: (context, index) {
                              final testContent = testContents[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    testContent.title.getOrCrash(),
                                    style: AppTextStyle.heading01
                                        .copyWith(color: AppStyle.black),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    testContent.content.getOrCrash(),
                                    style: AppTextStyle.body03
                                        .copyWith(color: AppStyle.black),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                ],
                              );
                            }),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 56,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Visibility(
                      visible: showLoading == true,
                      child: const CommonLoading(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
