import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_test/firebase_service/storage_service.dart';

class MyStoreItem extends StatelessWidget {
  const MyStoreItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding:
        EdgeInsetsDirectional.fromSTEB(
            0, 0, 0, 12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional
                  .fromSTEB(16, 8, 16, 12),
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(16),
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/snstest-f2c16.appspot.com/o/stores%2Fstore01.jpeg?alt=media&token=c349f388-ae6f-45f8-9050-d06b9bf41ddc',
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional
                  .fromSTEB(16, 0, 16, 4),
              child: Row(
                mainAxisSize:
                MainAxisSize.max,
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
                children: [
                  Text(
                    '송정 Palmtree',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional
                        .fromSTEB(
                        16, 0, 0, 0),
                    child: Text(
                      '포인트 사용가능 매장',
                      style: TextStyle(
                        fontWeight:
                        FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional
                  .fromSTEB(16, 0, 16, 4),
              child: Row(
                mainAxisSize:
                MainAxisSize.max,
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '부산 해운대구 송정중앙로9번길 88',
                      style: TextStyle(
                        fontWeight:
                        FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional
                        .fromSTEB(
                        16, 4, 4, 0),
                    child: Text(
                      '4.25',
                      style: TextStyle(
                        fontWeight:
                        FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
