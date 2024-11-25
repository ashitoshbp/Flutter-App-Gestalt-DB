// import 'package:flutter/material.dart';
// import 'dart:io';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:image_cropper/image_cropper.dart';
// import 'AnnotationCanvas.dart';

// class AnnotationScreen extends StatefulWidget {
//   @override
//   _AnnotateFaceScreenState createState() => _AnnotateFaceScreenState();
// }

// class _AnnotateFaceScreenState extends State<AnnotationScreen> {
//   File? _imageFile;

//   Future<void> _pickAndCropImage() async {
//     // final picker = ImagePicker();
//     // final pickedFile = await picker.pickImage(source: ImageSource.gallery); // Change to ImageSource.camera for camera

//     // if (pickedFile != null) {
//       // final croppedFile = await ImageCropper().cropImage(
//       //   sourcePath: pickedFile.path,
//       //   // aspectRatio: CropAspectRatio.,
//       //   uiSettings: [AndroidUiSettings(
//       //     toolbarTitle: 'Crop Image',
//       //     toolbarColor: Colors.deepOrange,
//       //     toolbarWidgetColor: Colors.white,
//       //   )],
//       // );

//       // if (croppedFile != null) {
//       //   setState(() {
//       //     _imageFile = File(croppedFile.path);
//       //   });

//       //   // Navigate to annotation screen
//       //   Navigator.push(
//       //     context,
//       //     MaterialPageRoute(
//       //       builder: (context) => AnnotationCanvas(imagePath: _imageFile!.path),
//       //     ),
//       //   );
//       // }
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Annotate Image')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _pickAndCropImage,
//           child: Text('Select and Annotate Image'),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'dart:io';
// import 'package:image_picker/image_picker.dart'
import 'AnnotationCanvas.dart';

class AnnotationScreen extends StatefulWidget {
  @override
  _AnnotateFaceScreenState createState() => _AnnotateFaceScreenState();
}

class _AnnotateFaceScreenState extends State<AnnotationScreen> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery); // Change to ImageSource.camera for camera

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });

      // Navigate to annotation screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnnotationCanvas(imagePath: _imageFile!.path),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Annotate Image')),
      body: Center(
        child: ElevatedButton(
          onPressed: _pickImage,
          child: Text('Select and Annotate Image'),
        ),
      ),
    );
  }
}
