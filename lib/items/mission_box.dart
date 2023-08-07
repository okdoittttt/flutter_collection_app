import 'package:flutter/material.dart';
//import 'package:flutter_sns_test/pages/detail/collection_detail.dart';

// 미션 모달 창에서 각각의 미션 박스를 분리함
class MissonBox extends StatefulWidget {
  final String title;
  final String detail;
  final String point;
  final String img;
  final double maxWidth;
  final double maxHeight;

  const MissonBox({super.key, required this.maxWidth, required this.maxHeight,
    required this.detail, required this.img, required this.point, required this.title});

  @override
  State<MissonBox> createState() => _MissonBoxState();
}

class _MissonBoxState extends State<MissonBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => CollectionDetail(
      //       name: name,
      //       img: img,
      //       habitat: habitat,
      //       description: description,
      //     ),
      //   ),
      // );
    },
      child: Container(  // 미션 컨테이너
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
            Flexible(
              flex: 3,
              child: Image(
                image: AssetImage(widget.img),
                height: widget.maxHeight,
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
                  Text(widget.title, style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(widget.detail, style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.point, style: TextStyle(
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
    );
  }
}
