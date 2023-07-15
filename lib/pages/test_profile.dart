// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import '../model/profilemodel.dart';
// export '../model/profilemodel.dart';
//
// class ProflieWidget extends StatefulWidget {
//   const ProflieWidget({Key? key}) : super(key: key);
//
//   @override
//   _ProflieWidgetState createState() => _ProflieWidgetState();
// }
//
// class _ProflieWidgetState extends State<ProflieWidget> {
//   late ProflieModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => ProflieModel());
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         appBar: responsiveVisibility(
//           context: context,
//           tabletLandscape: false,
//           desktop: false,
//         )
//             ? AppBar(
//           backgroundColor:
//           FlutterFlowTheme.of(context).secondaryBackground,
//           automaticallyImplyLeading: false,
//           leading: FlutterFlowIconButton(
//             borderRadius: 30,
//             buttonSize: 60,
//             icon: Icon(
//               Icons.arrow_back_rounded,
//               color: FlutterFlowTheme.of(context).primaryText,
//               size: 30,
//             ),
//             onPressed: () {
//               print('IconButton pressed ...');
//             },
//           ),
//           title: Text(
//             'Profile',
//             style: FlutterFlowTheme.of(context).titleMedium,
//           ),
//           actions: [],
//           centerTitle: false,
//           elevation: 0,
//         )
//             : null,
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Container(
//                           width: 72,
//                           height: 72,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context).accent1,
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               color: FlutterFlowTheme.of(context).primary,
//                               width: 2,
//                             ),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(40),
//                               child: Image.network(
//                                 'https://images.unsplash.com/photo-1503853585905-d53f628e46ac?w=1280&h=720',
//                                 width: 60,
//                                 height: 60,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Joy Augustin',
//                                 style:
//                                 FlutterFlowTheme.of(context).headlineSmall,
//                               ),
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                                 child: Text(
//                                   'joy@augustin.com',
//                                   style:
//                                   FlutterFlowTheme.of(context).labelMedium,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
//                 child: Text(
//                   'Account',
//                   style: FlutterFlowTheme.of(context).labelLarge,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.attach_money_rounded,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Payment Options',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.language_outlined,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Country',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.notifications_none,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Notification Settings',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.account_circle_outlined,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Edit Profile',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
//                 child: Text(
//                   'General',
//                   style: FlutterFlowTheme.of(context).labelLarge,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.help_outline_rounded,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Support',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.privacy_tip_rounded,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Terms of Service',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.ios_share,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Invite Friends',
//                             style: FlutterFlowTheme.of(context).labelMedium,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18,
//                             ),
//                           ),
//                         ),
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
