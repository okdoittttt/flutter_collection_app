import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/bottom_nav_bar.dart';
import '../items/storeItems.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  String searchKeyword = '';
  // 초기 Store Document는 restaurant으로 설정(index 0)
  String documentName = 'restaurant';

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
                                  labelText: 'Search list ...',
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
                              text: 'Vegan Restaurant',
                              icon: Icon(
                                Icons.food_bank,
                              ),
                            ),
                            Tab(
                              text: 'Eco Shop',
                              icon: Icon(
                                Icons.store_mall_directory,
                              ),
                            ),
                            Tab(
                              text: 'ETC',
                              icon: Icon(
                                Icons.nature_people,
                              ),
                            ),
                          ],
                          onTap: (index) {
                            if (index == 0) {
                              setState(() {
                                documentName = 'restaurant';
                              });
                            } else if (index == 1) {
                              setState(() {
                                documentName = 'ecoshop';
                              });
                            } else {
                              setState(() {
                                documentName = 'restaurant';
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
                                return StoreItems(searchKeyword: searchKeyword, documentName: documentName);
                              },
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1, // 데이터 개수에 맞게 조정
                              itemBuilder: (context, index) {
                                return StoreItems(searchKeyword: searchKeyword, documentName: documentName);
                              },
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1, // 데이터 개수에 맞게 조정
                              itemBuilder: (context, index) {
                                return StoreItems(searchKeyword: searchKeyword, documentName: documentName);
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
