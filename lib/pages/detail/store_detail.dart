import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_sns_test/model/map_and_call_model.dart';

class StoreDetailPage extends StatefulWidget {
  final String name;
  final String img;
  final String location;
  final String rating;
  final String longitude;
  final String latitude;
  final String tel;

  const StoreDetailPage({
    Key? key,
    required this.name,
    required this.img,
    required this.location,
    required this.rating,
    required this.longitude,
    required this.latitude,
    required this.tel,
  }) : super(key: key);

  @override
  State<StoreDetailPage> createState() => _StoreDetailPage();
}

class _StoreDetailPage extends State<StoreDetailPage> {
  // 지도 & 전화걸기 클래스 선언
  final MapAndCall mapncall = MapAndCall();

  void _dummyRatingUpdate(double rating) {
    // 빈 함수로 사용자 입력 무시
  }
  @override
  Widget build(BuildContext context) {
    double ratingFloat = double.parse(widget.rating);

    return GestureDetector(
      // onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.name,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      widget.img,
                      width: double.infinity,
                      height: 330,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '비건식당 OR 친환경 상점',
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Text(widget.location,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              )),
                          // Rating Bar 구현
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: RatingBar(
                              initialRating: ratingFloat,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: const Icon(Icons.star, color: Colors.orange),
                                half: const Icon(Icons.star_half, color: Colors.orange),
                                empty: const Icon(Icons.star_outline, color: Colors.orange),
                              ),
                              onRatingUpdate: _dummyRatingUpdate, // null로 설정하여 사용자가 수정하지 못하도록 함
                            ),
                          ),

                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                            child: Container(
                              width: double.infinity,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => mapncall.openmap(widget.latitude, widget.longitude),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                                            child: Icon(
                                              Icons.map_outlined,
                                              color: Colors.lightBlueAccent,
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 12, 0),
                                            child: Text(
                                              'Map',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                // color: Colors.lightBlueAccent,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    child: VerticalDivider(
                                      thickness: 1,
                                      indent: 12,
                                      endIndent: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => mapncall.call('+821012341234'),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                                            child: Icon(
                                              Icons.call_rounded,
                                              color: Colors.lightBlueAccent,
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 12, 0),
                                            child: Text(
                                              'Call',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                // color: Colors.lightBlueAccent,
                                              ),
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
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Product',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                              child: Text(
                                '제품 Table ... DB 구현 미완',
                                // style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: MybottomBar(),
      ),
    );
  }
}
