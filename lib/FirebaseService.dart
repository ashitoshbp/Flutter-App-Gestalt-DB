import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class FirebaseService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadImage(File imageFile) async {
    final storageRef = _storage.ref().child('images/${DateTime.now()}.jpg');
    await storageRef.putFile(imageFile);
    return await storageRef.getDownloadURL();
  }

  Future<void> saveAnnotations(String imageUrl, List<Map<String, dynamic>> annotations) async {
    await _firestore.collection('annotations').add({
      'imageUrl': imageUrl,
      'annotations': annotations,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
