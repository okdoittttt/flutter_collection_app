import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_test/firebase_service/storage_service.dart';

class MyRestaurantItem extends StatelessWidget {
  const MyRestaurantItem({super.key});


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('restaurant').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          // Firebase에서 가져온 문서 개수만큼 위젯을 출력합니다.
          return Column(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic>? data = document.data() as Map<String, dynamic>?;

              return Container(
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
                            data?['img'] ?? '',
                            width: double.infinity,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4),
                        child: Text(
                          data?['name'] ?? '',
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
                              data?['location'] ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                data?['rating'] ?? '',
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
              );
            }).toList(),
          );
        }

        // 데이터가 없는 경우 로딩 표시를 표시합니다.
        return Center(child: CircularProgressIndicator());
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //
  //   return Container(
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //     ),
  //     child: Padding(
  //       padding:
  //       EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.max,
  //         crossAxisAlignment:
  //         CrossAxisAlignment.start,
  //         children: [
  //           Padding(
  //             padding: EdgeInsetsDirectional
  //                 .fromSTEB(16, 8, 16, 12),
  //             child: ClipRRect(
  //               borderRadius:
  //               BorderRadius.circular(16),
  //               child: Image.network(
  //                 'https://firebasestorage.googleapis.com/v0/b/snstest-f2c16.appspot.com/o/stores%2Fstore01.jpeg?alt=media&token=c349f388-ae6f-45f8-9050-d06b9bf41ddc',
  //                 width: double.infinity,
  //                 height: 230,
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsetsDirectional
  //                 .fromSTEB(16, 0, 16, 4),
  //             child: Row(
  //               mainAxisSize:
  //               MainAxisSize.max,
  //               mainAxisAlignment:
  //               MainAxisAlignment
  //                   .spaceBetween,
  //               children: [
  //                 Text(
  //                   '송정 Palmtree',
  //                   style: TextStyle(
  //                     fontSize: 16,
  //                     fontWeight:
  //                     FontWeight.bold,
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding:
  //                   EdgeInsetsDirectional
  //                       .fromSTEB(
  //                       16, 0, 0, 0),
  //                   child: Text(
  //                     '포인트 사용가능 매장',
  //                     style: TextStyle(
  //                       fontWeight:
  //                       FontWeight.normal,
  //                       fontSize: 12,
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsetsDirectional
  //                 .fromSTEB(16, 0, 16, 4),
  //             child: Row(
  //               mainAxisSize:
  //               MainAxisSize.max,
  //               mainAxisAlignment:
  //               MainAxisAlignment
  //                   .spaceBetween,
  //               children: [
  //                 Expanded(
  //                   child: Text(
  //                     '부산 해운대구 송정중앙로9번길 88',
  //                     style: TextStyle(
  //                       fontWeight:
  //                       FontWeight.normal,
  //                       fontSize: 12,
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding:
  //                   EdgeInsetsDirectional
  //                       .fromSTEB(
  //                       16, 4, 4, 0),
  //                   child: Text(
  //                     '4.25',
  //                     style: TextStyle(
  //                       fontWeight:
  //                       FontWeight.normal,
  //                       fontSize: 12,
  //                     ),
  //                   ),
  //                 ),
  //                 Icon(
  //                   Icons.star_rounded,
  //                   color: Colors.yellow,
  //                   size: 24,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
