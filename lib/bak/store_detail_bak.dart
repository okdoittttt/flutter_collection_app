// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sns_test/items/bottom_nav_bar.dart';
//
// // storeItems에서 Navigator.push 값 받아오기 StoreDetailPage는 const 선언 해야한다.
// class StoreDetailPage extends StatelessWidget {
//   final String name;
//   final String location;
//   final String img;
//   final String rating;
//
//   const StoreDetailPage({
//     Key? key,
//     required this.name,
//     required this.location,
//     required this.img,
//     required this.rating,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         // 뒤로가기 버튼 없애기
//         // automaticallyImplyLeading: false,
//         title: Text(
//           name,
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(16),
//                           child: Image.network(
//                             img,
//                             width: MediaQuery.sizeOf(context).width * 0.9,
//                             height: 250,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
//                     child: Text(
//                       name,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
//                     child: Text(
//                       location,
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
//                     child:Row(
//                       children: [
//                         Text(
//                           rating,
//                           style: TextStyle(
//                             fontWeight: FontWeight.normal,
//                             fontSize: 12,
//                           ),
//                         ),
//                         Icon(
//                           Icons.star_rounded,
//                           color: Colors.yellow,
//                           size: 24,
//                         ),
//                       ],
//                     ),
//
//                       // ],
//                     ),
//
//
//                   // Row(
//                   //   mainAxisSize: MainAxisSize.max,
//                   //   children: [
//                   //     Padding(
//                   //       padding: EdgeInsetsDirectional.fromSTEB(16, 20, 24, 8),
//                   //       child: FlutterFlowChoiceChips(
//                   //         options: [
//                   //           ChipData('Hot Tub Access'),
//                   //           ChipData('No Access')
//                   //         ],
//                   //         onChanged: (val) => setState(
//                   //                 () => _model.amentitiesValue = val?.first),
//                   //         selectedChipStyle: ChipStyle(
//                   //           backgroundColor:
//                   //           FlutterFlowTheme.of(context).primary,
//                   //           textStyle: FlutterFlowTheme.of(context)
//                   //               .bodyMedium
//                   //               .override(
//                   //             fontFamily: 'Plus Jakarta Sans',
//                   //             color: Colors.white,
//                   //           ),
//                   //           iconColor: FlutterFlowTheme.of(context).info,
//                   //           iconSize: 18,
//                   //           labelPadding:
//                   //           EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
//                   //           elevation: 4,
//                   //         ),
//                   //         unselectedChipStyle: ChipStyle(
//                   //           backgroundColor:
//                   //           FlutterFlowTheme.of(context).primaryBackground,
//                   //           textStyle: FlutterFlowTheme.of(context)
//                   //               .labelMedium
//                   //               .override(
//                   //             fontFamily: 'Outfit',
//                   //             color: FlutterFlowTheme.of(context)
//                   //                 .secondaryText,
//                   //           ),
//                   //           iconColor:
//                   //           FlutterFlowTheme.of(context).secondaryText,
//                   //           iconSize: 24,
//                   //           labelPadding:
//                   //           EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
//                   //           elevation: 0,
//                   //         ),
//                   //         chipSpacing: 12,
//                   //         rowSpacing: 12,
//                   //         multiselect: false,
//                   //         alignment: WrapAlignment.start,
//                   //         controller: _model.amentitiesValueController ??=
//                   //             FormFieldController<List<String>>(
//                   //               [],
//                   //             ),
//                   //       ),
//                   //     ),
//                   //   ],
//                   // ),
//                   // Padding(
//                   //   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 24, 12),
//                   //   child: Row(
//                   //     mainAxisSize: MainAxisSize.max,
//                   //     children: [
//                   //       Expanded(
//                   //         child: Padding(
//                   //           padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
//                   //           child: FlutterFlowChoiceChips(
//                   //             options: [
//                   //               ChipData('Breakfast'),
//                   //               ChipData('No Breakfast')
//                   //             ],
//                   //             onChanged: (val) => setState(
//                   //                     () => _model.choiceChipsValue = val?.first),
//                   //             selectedChipStyle: ChipStyle(
//                   //               backgroundColor:
//                   //               FlutterFlowTheme.of(context).primary,
//                   //               textStyle: FlutterFlowTheme.of(context)
//                   //                   .bodyMedium
//                   //                   .override(
//                   //                 fontFamily: 'Plus Jakarta Sans',
//                   //                 color: Colors.white,
//                   //               ),
//                   //               iconColor: FlutterFlowTheme.of(context).info,
//                   //               iconSize: 18,
//                   //               labelPadding:
//                   //               EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
//                   //               elevation: 4,
//                   //             ),
//                   //             unselectedChipStyle: ChipStyle(
//                   //               backgroundColor: FlutterFlowTheme.of(context)
//                   //                   .primaryBackground,
//                   //               textStyle:
//                   //               FlutterFlowTheme.of(context).labelMedium,
//                   //               iconColor:
//                   //               FlutterFlowTheme.of(context).secondaryText,
//                   //               iconSize: 18,
//                   //               labelPadding:
//                   //               EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
//                   //               elevation: 0,
//                   //             ),
//                   //             chipSpacing: 12,
//                   //             rowSpacing: 12,
//                   //             multiselect: false,
//                   //             alignment: WrapAlignment.start,
//                   //             controller: _model.choiceChipsValueController ??=
//                   //                 FormFieldController<List<String>>(
//                   //                   [],
//                   //                 ),
//                   //           ),
//                   //         ),
//                   //       ),
//                   //     ],
//                   //   ),
//                   // ),
//                   Divider(
//                     height: 36,
//                     thickness: 1,
//                     color: Colors.white,
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Food 1',
//                           // style: FlutterFlowTheme.of(context).labelMedium,
//                         ),
//                         Text(
//                           'price',
//                           // style: FlutterFlowTheme.of(context).bodyLarge,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'food 2',
//                           // style: FlutterFlowTheme.of(context).labelMedium,
//                         ),
//                         Text(
//                           'price',
//                           // style: FlutterFlowTheme.of(context).bodyLarge,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'food 3',
//                           // style: FlutterFlowTheme.of(context).labelMedium,
//                         ),
//                         Text(
//                           'price',
//                           // style: FlutterFlowTheme.of(context).bodyLarge,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'test',
//                           // style: FlutterFlowTheme.of(context)
//                           //     .headlineSmall
//                           //     .override(
//                           //   fontFamily: 'Outfit',
//                           //   fontWeight: FontWeight.normal,
//                           // ),
//                         ),
//                         Text(
//                           'test',
//                           // style: FlutterFlowTheme.of(context).displaySmall,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: MediaQuery.sizeOf(context).width,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 4,
//                   color: Color(0x55000000),
//                   offset: Offset(0, 2),
//                 )
//               ],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(0),
//                 bottomRight: Radius.circular(0),
//                 topLeft: Radius.circular(16),
//                 topRight: Radius.circular(16),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: MybottomBar(),
//     );
//   }
// }


//===========================//===========================//===========================//===========================//===========================//===========================//===========================//===========================
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_sns_test/items/bottom_nav_bar.dart';
//
// class StoreDetailPage extends StatefulWidget {
//   final String name;
//   final String img;
//   final String location;
//   final String rating;
//
//   const StoreDetailPage({
//     Key? key,
//     required this.name,
//     required this.img,
//     required this.location,
//     required this.rating,
//   }) : super(key: key);
//
//   @override
//   State<StoreDetailPage> createState() => _StoreDetailPage();
// }
//
// class _StoreDetailPage extends State<StoreDetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     double ratingFloat = double.parse(widget.rating);
//
//     return GestureDetector(
//       // onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             widget.name,
//             style: TextStyle(color: Colors.black),
//           ),
//           backgroundColor: Colors.white,
//         ),
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.network(
//                     widget.img,
//                     width: double.infinity,
//                     height: 330,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Text(
//                           'Primary Physician',
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
//                           child: Text(
//                             widget.name,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 24,
//                             ),
//                           ),
//                         ),
//                         Text(widget.location,
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.normal,
//                             )),
//                         // Rating Bar 구현
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                           child: RatingBar(
//                               initialRating: ratingFloat,
//                               direction: Axis.horizontal,
//                               allowHalfRating: true,
//                               itemCount: 5,
//                               ratingWidget: RatingWidget(
//                                   full: const Icon(Icons.star,
//                                       color: Colors.orange),
//                                   half: const Icon(
//                                     Icons.star_half,
//                                     color: Colors.orange,
//                                   ),
//                                   empty: const Icon(
//                                     Icons.star_outline,
//                                     color: Colors.orange,
//                                   )),
//                               onRatingUpdate: (value) {
//                                 setState(() {
//                                   ratingFloat = ratingFloat;
//                                 });
//                               }
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
//                           child: Container(
//                             width: double.infinity,
//                             height: 70,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(
//                                 color: Colors.grey,
//                                 width: 2,
//                               ),
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Expanded(
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 12, 0, 12),
//                                         child: Icon(
//                                           Icons.chat_bubble_rounded,
//                                           color: Colors.lightBlueAccent,
//                                           size: 24,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 12, 0),
//                                         child: Text(
//                                           'Chat',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             // color: Colors.lightBlueAccent,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 100,
//                                   child: VerticalDivider(
//                                     thickness: 1,
//                                     indent: 12,
//                                     endIndent: 12,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 12, 0, 12),
//                                         child: Icon(
//                                           Icons.call_rounded,
//                                           color: Colors.lightBlueAccent,
//                                           size: 24,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 12, 0),
//                                         child: Text(
//                                           'Call',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             // color: Colors.lightBlueAccent,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(-1, 0),
//                           child: Text(
//                             'Doctor Bio',
//                             // style:
//                             // FlutterFlowTheme.of(context).bodySmall.override(
//                             //   fontFamily: 'Plus Jakarta Sans',
//                             //   fontWeight: FontWeight.bold,
//                             // ),
//                           ),
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(-1, 0),
//                           child: Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
//                             child: Text(
//                               'contents',
//                               // style: FlutterFlowTheme.of(context).labelMedium,
//                             ),
//                           ),
//                         ),
//                         // Padding(
//                         //   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                         //   child: FFButtonWidget(
//                         //     onPressed: () {
//                         //       print('Button pressed ...');
//                         //     },
//                         //     text: 'Book Appointment',
//                         //     options: FFButtonOptions(
//                         //       width: double.infinity,
//                         //       height: 48,
//                         //       padding:
//                         //       EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         //       iconPadding:
//                         //       EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         //       color: FlutterFlowTheme.of(context).primary,
//                         //       textStyle: FlutterFlowTheme.of(context)
//                         //           .titleSmall
//                         //           .override(
//                         //         fontFamily: 'Plus Jakarta Sans',
//                         //         color: Colors.white,
//                         //       ),
//                         //       borderSide: BorderSide(
//                         //         color: Colors.transparent,
//                         //         width: 1,
//                         //       ),
//                         //       borderRadius: BorderRadius.circular(8),
//                         //     ),
//                         //   ),
//                         // ),
//                         // Padding(
//                         //   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                         //   child: FFButtonWidget(
//                         //     onPressed: () {
//                         //       print('Button pressed ...');
//                         //     },
//                         //     text: 'Favorite Doctor',
//                         //     icon: Icon(
//                         //       Icons.favorite_border,
//                         //       color: FlutterFlowTheme.of(context).primaryText,
//                         //       size: 15,
//                         //     ),
//                         //     options: FFButtonOptions(
//                         //       width: double.infinity,
//                         //       height: 48,
//                         //       padding:
//                         //       EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         //       iconPadding:
//                         //       EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         //       color: FlutterFlowTheme.of(context)
//                         //           .secondaryBackground,
//                         //       textStyle: FlutterFlowTheme.of(context).bodyLarge,
//                         //       borderSide: BorderSide(
//                         //         color: FlutterFlowTheme.of(context).alternate,
//                         //         width: 1,
//                         //       ),
//                         //       borderRadius: BorderRadius.circular(8),
//                         //     ),
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         // bottomNavigationBar: MybottomBar(),
//       ),
//     );
//   }
// }
