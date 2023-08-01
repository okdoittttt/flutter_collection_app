import 'package:flutter/material.dart';

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
                  decoration: const BoxDecoration(
                    color: Colors.white, // 모달 배경색
                    borderRadius: BorderRadius.all(
                      Radius.circular(20), // 모달 전체 라운딩 처리
                    ),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) => Column(
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
                              fontWeight: FontWeight.w300,
                              height: 1.6 // 텍스트 수직 정렬 : 높이 비율 사용
                            ),

                          ),
                          margin: EdgeInsets.only(top:20, bottom: 20,),
                        ),

                        Container(  // 미션 컨테이너
                          height: 100,
                          width: constraints.maxWidth * 0.9, // constraints : 부모 위젯의 크기 사용
                          margin: EdgeInsets.only(top:10, bottom: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Image(
                                  image: AssetImage('image/jangune.png'),
                                  height: constraints.maxHeight,
                                  //width: ,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Flexible(flex: 1, child: Container()),
                              Flexible(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('진돗개 도감 등록하기', style: TextStyle(
                                      fontSize: 16,
                                      //height: constraints.maxHeight * 0.2,
                                    ),),
                                    Text('HINT : 도심 주변', style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      //height: constraints.maxHeight * 0.2,
                                    ),),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('300P 적립', style: TextStyle(
                                          fontSize: 14,
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(  // 미션 컨테이너
                          height: 100,
                          width: constraints.maxWidth * 0.9, // constraints : 부모 위젯의 크기 사용
                          margin: EdgeInsets.only(top:10, bottom: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Image(
                                  image: AssetImage('image/jangune.png'),
                                  height: constraints.maxHeight,
                                  //width: ,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Flexible(flex: 1, child: Container()),
                              Flexible(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('진돗개 도감 등록하기', style: TextStyle(
                                        fontSize: 16
                                    ),),
                                    Text('HINT : 도심 주변', style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('300P 적립', style: TextStyle(
                                            fontSize: 14
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),


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
                              fontWeight: FontWeight.w300,
                                height: 1.6
                            ),

                          ),
                          margin: EdgeInsets.only(top:20, bottom: 20,),
                        ),

                        Container(  // 미션 컨테이너
                          height: 100,
                          width: constraints.maxWidth * 0.9, // constraints : 부모 위젯의 크기 사용
                          margin: EdgeInsets.only(top:10, bottom: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Image(
                                  image: AssetImage('image/jangune.png'),
                                  height: constraints.maxHeight,
                                  //width: ,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Flexible(flex: 1, child: Container()),
                              Flexible(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('에코 푸드 방문 후 QR코드 찍기', style: TextStyle(
                                        fontSize: 16
                                    ),),
                                    Text('주소 : 부산 해운대구 송정중앙로 9번길 88', style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('1000P 적립', style: TextStyle(
                                            fontSize: 14
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),



                ), // 모달 내부 디자인 영역
              );
            },
            backgroundColor: Colors.transparent,
          );
        });
  }
}