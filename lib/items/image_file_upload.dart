import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_test/firebase_service/storage_service.dart';

class ImageFileUploadItem extends StatelessWidget {
  const ImageFileUploadItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
      child: Material(
        color: Colors.transparent,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.image,
                  color: Colors.black,
                  size: 24,
                ),
                Padding(
                  padding:
                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Text(
                    'Image Upload',
                    // style: Colors.white,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.9, 0),
                    child: IconButton(
                      onPressed: () async {
                        final result =
                        await FilePicker.platform.pickFiles(
                          allowMultiple: false,
                          type: FileType.custom,
                          allowedExtensions: ['png', 'jpg'],
                        );

                        if (result == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("No file selected."),
                            ),
                          );
                          return null;
                        }

                        final path = result.files.single.path;
                        final fileName = result.files.single.name;

                        print(path.runtimeType);
                        print(fileName);

                        storage
                            .uploadFile(path!, fileName)
                            .then((value) => print('Done'));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
