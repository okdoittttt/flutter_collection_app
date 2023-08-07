import 'package:flutter/material.dart';
import 'package:flutter_sns_test/items/achievement_box.dart';

class AchievementModal extends StatelessWidget {
  const AchievementModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.workspace_premium, size: 40),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // 모달 기본 높이보다 길게 만들고 싶을 때 설정
            builder: (BuildContext context) {
              return Center(
                child: Container(
                  height: 600, // 모달 높이 크기
                  margin: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  padding: EdgeInsets.only(bottom: 30),
                  decoration: const BoxDecoration(
                    color: Colors.white, // 모달 배경색
                    borderRadius: BorderRadius.all(
                      Radius.circular(20), // 모달 전체 라운딩 처리
                    ),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) => SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 50,),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text('업적',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),),
                              ),
                              IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(Icons.close_outlined)),
                            ],
                          ),

                          AchievementBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                              iconName: Icons.diversity_1_outlined, title: '셀럽 !', detail: 'SNS 공유 10회 이상 달성',
                              colorName: Colors.pink),

                          AchievementBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                            iconName: Icons.emoji_nature_outlined, title: '여름이었다...', detail: '여름 시즌 미션 모두 완료',
                            colorName: Colors.lightGreen,),

                          AchievementBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                            iconName: Icons.pets_outlined, title: '손옥무', detail: '강아지 수집 횟수 10회 이상',
                            colorName: Colors.brown,),

                          AchievementBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                            iconName: Icons.calendar_month_outlined, title: '개근왕', detail: '30일 이상 연속으로 출석',
                            colorName: Colors.orange,),

                        ],
                      ),
                    ),
                  ),



                ),
              );
            },
            backgroundColor: Colors.transparent,
          );
        });
  }
}