import 'package:flutter/material.dart';
import 'dart:io';

class AnnotationCanvas extends StatefulWidget {
  final String imagePath;

  AnnotationCanvas({required this.imagePath});

  @override
  _AnnotationCanvasState createState() => _AnnotationCanvasState();
}

class _AnnotationCanvasState extends State<AnnotationCanvas> {
  List<Map<String, dynamic>> annotations = [];

  void _addAnnotation(Offset position) {
    TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Annotation"),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Enter your comments"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  annotations.add({
                    'position': {'dx': position.dx, 'dy': position.dy},
                    'comment': controller.text,
                  });
                });
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Annotate Face')),
      body: GestureDetector(
        onTapUp: (details) {
          _addAnnotation(details.localPosition);
        },
        child: Stack(
          children: [
            Image.file(File(widget.imagePath)),
            for (var annotation in annotations)
              Positioned(
                left: annotation['position']['dx'],
                top: annotation['position']['dy'],
                child: Icon(Icons.comment, color: Colors.blue),
              ),
          ],
        ),
      ),
    );
  }
}
