import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodeTest extends StatelessWidget {
  const CodeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'th',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1515898913320-f38370edab7a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2929&q=80',
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                    child: Text(
                      'Vacation Home',
                      // style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                    child: Text(
                      '123 Disney Way, Willingmington, WV 24921',
                      // style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                    child: Text(
                      'Choose an Option',
                      // style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     Padding(
                  //       padding: EdgeInsetsDirectional.fromSTEB(16, 20, 24, 8),
                  //       child: FlutterFlowChoiceChips(
                  //         options: [
                  //           ChipData('Hot Tub Access'),
                  //           ChipData('No Access')
                  //         ],
                  //         onChanged: (val) => setState(
                  //                 () => _model.amentitiesValue = val?.first),
                  //         selectedChipStyle: ChipStyle(
                  //           backgroundColor:
                  //           FlutterFlowTheme.of(context).primary,
                  //           textStyle: FlutterFlowTheme.of(context)
                  //               .bodyMedium
                  //               .override(
                  //             fontFamily: 'Plus Jakarta Sans',
                  //             color: Colors.white,
                  //           ),
                  //           iconColor: FlutterFlowTheme.of(context).info,
                  //           iconSize: 18,
                  //           labelPadding:
                  //           EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  //           elevation: 4,
                  //         ),
                  //         unselectedChipStyle: ChipStyle(
                  //           backgroundColor:
                  //           FlutterFlowTheme.of(context).primaryBackground,
                  //           textStyle: FlutterFlowTheme.of(context)
                  //               .labelMedium
                  //               .override(
                  //             fontFamily: 'Outfit',
                  //             color: FlutterFlowTheme.of(context)
                  //                 .secondaryText,
                  //           ),
                  //           iconColor:
                  //           FlutterFlowTheme.of(context).secondaryText,
                  //           iconSize: 24,
                  //           labelPadding:
                  //           EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                  //           elevation: 0,
                  //         ),
                  //         chipSpacing: 12,
                  //         rowSpacing: 12,
                  //         multiselect: false,
                  //         alignment: WrapAlignment.start,
                  //         controller: _model.amentitiesValueController ??=
                  //             FormFieldController<List<String>>(
                  //               [],
                  //             ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 24, 12),
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.max,
                  //     children: [
                  //       Expanded(
                  //         child: Padding(
                  //           padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                  //           child: FlutterFlowChoiceChips(
                  //             options: [
                  //               ChipData('Breakfast'),
                  //               ChipData('No Breakfast')
                  //             ],
                  //             onChanged: (val) => setState(
                  //                     () => _model.choiceChipsValue = val?.first),
                  //             selectedChipStyle: ChipStyle(
                  //               backgroundColor:
                  //               FlutterFlowTheme.of(context).primary,
                  //               textStyle: FlutterFlowTheme.of(context)
                  //                   .bodyMedium
                  //                   .override(
                  //                 fontFamily: 'Plus Jakarta Sans',
                  //                 color: Colors.white,
                  //               ),
                  //               iconColor: FlutterFlowTheme.of(context).info,
                  //               iconSize: 18,
                  //               labelPadding:
                  //               EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                  //               elevation: 4,
                  //             ),
                  //             unselectedChipStyle: ChipStyle(
                  //               backgroundColor: FlutterFlowTheme.of(context)
                  //                   .primaryBackground,
                  //               textStyle:
                  //               FlutterFlowTheme.of(context).labelMedium,
                  //               iconColor:
                  //               FlutterFlowTheme.of(context).secondaryText,
                  //               iconSize: 18,
                  //               labelPadding:
                  //               EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                  //               elevation: 0,
                  //             ),
                  //             chipSpacing: 12,
                  //             rowSpacing: 12,
                  //             multiselect: false,
                  //             alignment: WrapAlignment.start,
                  //             controller: _model.choiceChipsValueController ??=
                  //                 FormFieldController<List<String>>(
                  //                   [],
                  //                 ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Divider(
                    height: 36,
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Base Price',
                          // style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        Text(
                          '\$156.00',
                          // style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taxes',
                          // style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        Text(
                          '\$24.20',
                          // style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cleaning Fee',
                          // style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        Text(
                          '\$40.00',
                          // style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          // style: FlutterFlowTheme.of(context)
                          //     .headlineSmall
                          //     .override(
                          //   fontFamily: 'Outfit',
                          //   fontWeight: FontWeight.normal,
                          // ),
                        ),
                        Text(
                          '\$230.20',
                          // style: FlutterFlowTheme.of(context).displaySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x55000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}