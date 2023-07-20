import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/detail/store_detail.dart';

class StoreItems extends StatelessWidget {
  final String searchKeyword; // searchKeyword를 매개변수로 추가
  final String documentName; // documentName을 매개변수로 추가

  const StoreItems(
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
          return Column(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic>? data =
                  document.data() as Map<String, dynamic>?;
              String name = data?['name'] ?? '';
              String img = data?['img'] ?? '';
              String location = data?['location'] ?? '';
              String rating = data?['rating'] ?? '';
              String latitude = data?['latitude'] ?? '';
              String longitude = data?['longitude'] ?? '';
              String tel = data?['tel'] ?? '';

              // 검색어가 비어있거나 이름에 검색어가 포함된 경우에만 출력
              if (searchKeyword.isEmpty ||
                  name.toLowerCase().contains(searchKeyword.toLowerCase())) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoreDetailPage(
                          name: name,
                          location: location,
                          img: img,
                          rating: rating,
                          latitude: latitude,
                          longitude: longitude,
                          tel: tel,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                img,
                                width: double.infinity,
                                height: 230,
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
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  location,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    rating,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
