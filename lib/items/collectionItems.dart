import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_test/pages/detail/collection_detail.dart';

import '../pages/detail/store_detail.dart';

class CollectionItems extends StatelessWidget {
  final String searchKeyword; // searchKeyword를 매개변수로 추가
  final String documentName;

  const CollectionItems(
      {Key? key, required this.searchKeyword, required this.documentName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection(documentName) // documentName을 사용하여 적절한 컬렉션을 선택
          .where('name', isGreaterThanOrEqualTo: searchKeyword.toLowerCase())
          .orderBy('name')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          // Firebase에서 가져온 문서 개수만큼 위젯을 출력합니다.
          return Wrap(
            spacing: 16.0, // 아이템 간의 가로 간격
            runSpacing: 12.0, // 아이템 간의 세로 간격
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic>? data =
              document.data() as Map<String, dynamic>?;
              String name = data?['name'] ?? '';
              String img = data?['img'] ?? '';
              String habitat = data?['habitat'] ?? '';
              String description = data?['description'] ?? '';;

              // 검색어가 비어있거나 이름에 검색어가 포함된 경우에만 출력
              if (searchKeyword.isEmpty ||
                  name.toLowerCase().contains(searchKeyword.toLowerCase())) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CollectionDetail(
                          name: name,
                          img: img,
                          habitat: habitat,
                          description: description,
                        ),
                      ),
                    );
                  },
                  //
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 48.0) / 3, // 화면 가로 폭 기준으로 3등분
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // 가로 방향 중앙 정렬
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              img,
                              width: double.infinity,
                              height: 100, // 이미지 높이 조정 (원하는 크기로 변경 가능)
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center, // 가로 방향 중앙 정렬
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                // 검색어에 해당하는 데이터가 없을 경우 빈 컨테이너를 반환
                return Container();
              }
            }).toList(),
          );
        }
        // 데이터가 없는 경우 로딩 표시를 표시합니다.
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
