import 'package:flutter/material.dart';
import 'package:multimedia_gallery/multimedia_gallery.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ImageViewer(model: [
      ImageModel(
        path: 'assets/images/scenery.jpeg',
        uploadedDate: DateTime.now().toString(),
        name: 'Scenery',
      ),
      mockImageModel
    ]));
  }
}
