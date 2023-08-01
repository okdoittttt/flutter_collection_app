import 'package:flutter/cupertino.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_sns_test/model/image_recognition_model.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ImageModel>(
        init: ImageModel(),
        builder: (controller) {
          return controller.isCameraInitialized.value
              ? Stack(
            children: [
              CameraPreview(controller.cameraController),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.green, width: 4.0)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Text("${controller.label}"),
                    ),
                  ],
                ),
              ),
            ],
          )
              : const Center(
            child: Text("Loading Preview ..."),
          );
        },
      ),
    );
  }
}
