import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

// 미션 모달 창에서 각각의 미션 박스를 분리함
class AchievementBox extends StatefulWidget {
  final double maxWidth;
  final double maxHeight;
  final IconData iconName;
  final String title;
  final String detail;
  final Color colorName;
  //final double num;

  const AchievementBox({Key?key, required this.maxWidth, required this.maxHeight,
    required this.iconName, required this.title, required this.detail, required this.colorName}) : super(key: key);

  @override
  State<AchievementBox> createState() => _AchievementBoxState();
}

class _AchievementBoxState extends State<AchievementBox> {
  @override
  Widget build(BuildContext context) {
    return Container(  // 미션 컨테이너
      height: 100,
      //width: constraints.maxWidth * 0.9, // constraints : 부모 위젯의 크기 사용
      width: widget.maxWidth,
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
          SizedBox(width: 10,),
          Flexible(
            flex: 3,
            child: Icon(
              widget.iconName,
              color: widget.colorName,
              size: 45,
            ),
          ),
          Flexible(flex: 2, child: Container()),
          Flexible(
            flex: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  //height: constraints.maxHeight * 0.2,
                ),),
                Text(widget.detail, style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  //height: constraints.maxHeight * 0.2,
                ),),
                SizedBox(height: 10,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new LinearPercentIndicator(
                      width: 160,
                      lineHeight: 20,
                      center: Text("3/10"),
                      progressColor: widget.colorName,
                      barRadius: Radius.circular(10),
                      percent: 0.3,
                      padding: EdgeInsets.only(left: 0), // 기본으로 패딩 10 되어있음
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
