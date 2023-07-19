// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../items/bottom_nav_bar.dart';
// import '../items/ecoshop_item.dart';
// import '../items/restaurant_item.dart';
//
// class TestPages extends StatefulWidget {
//   const TestPages({super.key});
//
//   @override
//   State<TestPages> createState() => _TestPagesState();
// }
//
// class _TestPagesState extends State<TestPages> {
//   String searchKeyword = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         print('Focus Test...');
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 3,
//                         color: Color(0x33000000),
//                         offset: Offset(0, 1),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(40),
//                     border: Border.all(
//                       color: Colors.white,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.search_rounded,
//                           color: Colors.black,
//                           size: 24,
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
//                             child: Container(
//                               width: 200,
//                               child: TextFormField(
//                                 obscureText: false,
//                                 onChanged: (val) {
//                                   setState(() {
//                                     searchKeyword = val;
//                                     print(searchKeyword);
//                                   });
//                                 },
//                                 decoration: InputDecoration(
//                                   labelText: 'Search list ...',
//                                   enabledBorder: InputBorder.none,
//                                   focusedBorder: InputBorder.none,
//                                   focusedErrorBorder: InputBorder.none,
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             print('Search Button Press...');
//                           },
//                           icon: Icon(Icons.more),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: DefaultTabController(
//                   length: 3,
//                   initialIndex: 0,
//                   child: Column(
//                     children: [
//                       Align(
//                         alignment: Alignment(0, 0),
//                         child: TabBar(
//                           labelColor: Colors.black,
//                           unselectedLabelColor: Colors.grey,
//                           indicatorColor: Colors.blue,
//                           tabs: [
//                             Tab(
//                               text: 'Vegan Restaurant',
//                               icon: Icon(
//                                 Icons.food_bank,
//                               ),
//                             ),
//                             Tab(
//                               text: 'Eco Shop',
//                               icon: Icon(
//                                 Icons.store_mall_directory,
//                               ),
//                             ),
//                             Tab(
//                               text: 'ETC',
//                               icon: Icon(
//                                 Icons.nature_people,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: TabBarView(
//                           children: [
//                             ListView.builder(
//                               padding: EdgeInsets.zero,
//                               itemCount: 1, // 데이터 개수에 맞게 조정
//                               itemBuilder: (context, index) {
//                                 return MyRestaurantItem();
//                               },
//                             ),
//                             ListView.builder(
//                               padding: EdgeInsets.zero,
//                               itemCount: 1, // 데이터 개수에 맞게 조정
//                               itemBuilder: (context, index) {
//                                 return MyEcoShopItem();
//                               },
//                             ),
//                             ListView.builder(
//                               padding: EdgeInsets.zero,
//                               itemCount: 1, // 데이터 개수에 맞게 조정
//                               itemBuilder: (context, index) {
//                                 return MyRestaurantItem();
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: MybottomBar(),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
// // import '/flutter_flow/flutter_flow_icon_button.dart';
// // import '/flutter_flow/flutter_flow_theme.dart';
// // import '/flutter_flow/flutter_flow_util.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';
// //
// // import '../model/profilemodel.dart';
// // export '../model/profilemodel.dart';
// //
// // class ProflieWidget extends StatefulWidget {
// //   const ProflieWidget({Key? key}) : super(key: key);
// //
// //   @override
// //   _ProflieWidgetState createState() => _ProflieWidgetState();
// // }
// //
// // class _ProflieWidgetState extends State<ProflieWidget> {
// //   late ProflieModel _model;
// //
// //   final scaffoldKey = GlobalKey<ScaffoldState>();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _model = createModel(context, () => ProflieModel());
// //   }
// //
// //   @override
// //   void dispose() {
// //     _model.dispose();
// //
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
// //       child: Scaffold(
// //         key: scaffoldKey,
// //         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
// //         appBar: responsiveVisibility(
// //           context: context,
// //           tabletLandscape: false,
// //           desktop: false,
// //         )
// //             ? AppBar(
// //           backgroundColor:
// //           FlutterFlowTheme.of(context).secondaryBackground,
// //           automaticallyImplyLeading: false,
// //           leading: FlutterFlowIconButton(
// //             borderRadius: 30,
// //             buttonSize: 60,
// //             icon: Icon(
// //               Icons.arrow_back_rounded,
// //               color: FlutterFlowTheme.of(context).primaryText,
// //               size: 30,
// //             ),
// //             onPressed: () {
// //               print('IconButton pressed ...');
// //             },
// //           ),
// //           title: Text(
// //             'Profile',
// //             style: FlutterFlowTheme.of(context).titleMedium,
// //           ),
// //           actions: [],
// //           centerTitle: false,
// //           elevation: 0,
// //         )
// //             : null,
// //         body: SafeArea(
// //           top: true,
// //           child: Column(
// //             mainAxisSize: MainAxisSize.max,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                   ),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Container(
// //                           width: 72,
// //                           height: 72,
// //                           decoration: BoxDecoration(
// //                             color: FlutterFlowTheme.of(context).accent1,
// //                             shape: BoxShape.circle,
// //                             border: Border.all(
// //                               color: FlutterFlowTheme.of(context).primary,
// //                               width: 2,
// //                             ),
// //                           ),
// //                           child: Padding(
// //                             padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
// //                             child: ClipRRect(
// //                               borderRadius: BorderRadius.circular(40),
// //                               child: Image.network(
// //                                 'https://images.unsplash.com/photo-1503853585905-d53f628e46ac?w=1280&h=720',
// //                                 width: 60,
// //                                 height: 60,
// //                                 fit: BoxFit.cover,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
// //                           child: Column(
// //                             mainAxisSize: MainAxisSize.max,
// //                             mainAxisAlignment: MainAxisAlignment.center,
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 'Joy Augustin',
// //                                 style:
// //                                 FlutterFlowTheme.of(context).headlineSmall,
// //                               ),
// //                               Padding(
// //                                 padding:
// //                                 EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
// //                                 child: Text(
// //                                   'joy@augustin.com',
// //                                   style:
// //                                   FlutterFlowTheme.of(context).labelMedium,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
// //                 child: Text(
// //                   'Account',
// //                   style: FlutterFlowTheme.of(context).labelLarge,
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.attach_money_rounded,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Payment Options',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.language_outlined,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Country',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.notifications_none,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Notification Settings',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.account_circle_outlined,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Edit Profile',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
// //                 child: Text(
// //                   'General',
// //                   style: FlutterFlowTheme.of(context).labelLarge,
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.help_outline_rounded,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Support',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.privacy_tip_rounded,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Terms of Service',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   height: 60,
// //                   decoration: BoxDecoration(
// //                     color: FlutterFlowTheme.of(context).secondaryBackground,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   alignment: AlignmentDirectional(0, 0),
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       children: [
// //                         Icon(
// //                           Icons.ios_share,
// //                           color: FlutterFlowTheme.of(context).secondaryText,
// //                           size: 24,
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
// //                           child: Text(
// //                             'Invite Friends',
// //                             style: FlutterFlowTheme.of(context).labelMedium,
// //                           ),
// //                         ),
// //                         Expanded(
// //                           child: Align(
// //                             alignment: AlignmentDirectional(0.9, 0),
// //                             child: Icon(
// //                               Icons.arrow_forward_ios,
// //                               color: FlutterFlowTheme.of(context).secondaryText,
// //                               size: 18,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
