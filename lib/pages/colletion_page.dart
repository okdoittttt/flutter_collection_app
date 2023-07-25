import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_test/items/collectionItems.dart';

import '../items/bottom_nav_bar.dart';
import '../items/storeItems.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  String searchKeyword = '';
  String documentName = 'collection_animal';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Focus Test...');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Container(
                              width: 200,
                              child: TextFormField(
                                obscureText: false,
                                onChanged: (val) {
                                  setState(() {
                                    searchKeyword = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: '도감 검색 ...',
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () {
                        //     print('Search Button Press...');
                        //     print(searchKeyword);
                        //   },
                        //   icon: Icon(Icons.more),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0, 0),
                        child: TabBar(
                          mouseCursor: null,
                          labelColor: Colors.lightBlueAccent,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.blue,
                          tabs: [
                            Tab(
                              text: '동물/곤충 도감',
                              icon: Icon(
                                Icons.cruelty_free,
                              ),
                            ),
                            Tab(
                              text: '식물 도감',
                              icon: Icon(
                                Icons.filter_vintage,
                              ),
                            ),
                            Tab(
                              text: '태마/계절',
                              icon: Icon(
                                Icons.brightness_7,
                              ),
                            ),
                          ],
                          onTap: (index) {
                            if (index == 0) {
                              setState(() {
                                documentName = 'collection_animal';
                              });
                            } else if (index == 1) {
                              setState(() {
                                documentName = 'collection_plant';
                              });
                            } else {
                              setState(() {
                                documentName = 'collection_animal';
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10,),  // TabBar()와 TabBarView 사이 거리 조정
                      Expanded(
                        child: TabBarView(
                          children: [
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1, // 데이터 개수에 맞게 조정
                              itemBuilder: (context, index) {
                                return CollectionItems(searchKeyword: searchKeyword, documentName: documentName);
                              },
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1, // 데이터 개수에 맞게 조정
                              itemBuilder: (context, index) {
                                return CollectionItems(searchKeyword: searchKeyword, documentName: documentName);
                              },
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1, // 데이터 개수에 맞게 조정
                              itemBuilder: (context, index) {
                                return CollectionItems(searchKeyword: searchKeyword, documentName: documentName);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MybottomBar(),
      ),
    );
  }
}
