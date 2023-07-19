// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
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
//     return GestureDetector(
//       // onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             widget.name,
//             style: TextStyle(color: Colors.black),),
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
//                         Text(
//                             widget.location,
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.normal,
//                             )
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                           // child:
//                           // RatingBar.builder(
//                           //   onRatingUpdate: (newValue) => setState(
//                           //           () => _model.ratingBarValue = newValue),
//                           //   itemBuilder: (context, index) => Icon(
//                           //     Icons.star_rounded,
//                           //     color: FlutterFlowTheme.of(context).warning,
//                           //   ),
//                           //   direction: Axis.horizontal,
//                           //   initialRating: _model.ratingBarValue ??= 4,
//                           //   unratedColor:
//                           //   FlutterFlowTheme.of(context).alternate,
//                           //   itemCount: 5,
//                           //   itemSize: 24,
//                           //   glowColor: FlutterFlowTheme.of(context).warning,
//                           // ),
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
//                                 color: Colors.white,
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
//                                           color: Colors.black,
//                                           size: 24,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 12, 0),
//                                         child: Text(
//                                           'Chat',
//                                           // style: FlutterFlowTheme.of(context)
//                                           //     .bodyMedium
//                                           //     .override(
//                                           //   fontFamily: 'Plus Jakarta Sans',
//                                           //   color:
//                                           //   FlutterFlowTheme.of(context)
//                                           //       .primary,
//                                           // ),
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
//                                     color: Colors.white,
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
//                                           color: Colors.white,
//                                           size: 24,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 12, 0),
//                                         child: Text(
//                                           'Call',
//                                           // style: FlutterFlowTheme.of(context)
//                                           //     .bodyMedium
//                                           //     .override(
//                                           //   fontFamily: 'Plus Jakarta Sans',
//                                           //   color:
//                                           //   FlutterFlowTheme.of(context)
//                                           //       .primary,
//                                           // ),
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
//                               'Dr. Will Hobbiton is a board-certified internal medicine specialist with over 15 years of experience treating patients in both hospital and private practice settings. She is passionate about preventive care and dedicated to providing her patients with the highest level of personalized medical attention, while staying updated on the latest advancements in her field.',
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
//       ),
//     );
//   }
// }
