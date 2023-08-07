import 'package:flutter/material.dart';
import 'package:flutter_sns_test/items/mission_box.dart';


class MissionModal extends StatelessWidget {
  const MissionModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.menu_book, size: 40),
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
                  ), // 모달 좌우하단 여백 크기
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
                                child: Text('퀘스트',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),),
                              ),
                              IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(Icons.close_outlined)),
                            ],
                          ), //
                          Container(
                            width: 150,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Text('도감 미션',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                height: 1.6 // 텍스트 수직 정렬 : 높이 비율 사용
                              ),

                            ),
                            margin: EdgeInsets.only(top:20, bottom: 20,),
                          ),

                          MissonBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                              detail: 'HINT : 도심 주변', img: 'image/jangune.png', point: '300 P 적립', title: '진돗개 도감 등록하기'),

                          MissonBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                              detail: 'HINT : 도심 주변', img: 'image/jangune.png', point: '300 P 적립', title: '진돗개 도감 등록하기'),

                          MissonBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                              detail: 'HINT : 도심 주변', img: 'image/jangune.png', point: '300 P 적립', title: '진돗개 도감 등록하기'),

                          Container(
                            width: 150,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Text('매장 미션',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.6
                              ),

                            ),
                            margin: EdgeInsets.only(top:20, bottom: 20,),
                          ),

                          MissonBox(maxWidth: constraints.maxWidth * 0.9, maxHeight: constraints.maxHeight,
                              detail: '주소 : 부산 해운대구 송정중앙로 9번길 88', img: 'image/jangune.png', point: '1000 P 적립', title: '에코 푸드 방문'),


                        ],
                      ),
                    ),
                  ),



                ), // 모// )// 달 내부 디자인 영역
              );
            },
            backgroundColor: Colors.transparent,
          );
        });
  }
}