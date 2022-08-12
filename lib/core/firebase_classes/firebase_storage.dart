import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppFireBaseStorage {
  final storage = FirebaseStorage.instance;
  // Get a non-default Storage bucket
  // final storage = FirebaseStorage.instanceFor(bucket: "gs://ihar-7ab4b.appspot.com");
  Reference get storageRef => FirebaseStorage.instance.ref();
  Reference get imagesRef => storageRef.child("images");

  Future<UploadReturn> uploadImage(XFile file) async {
    final mountainsRef = storageRef.child("images/${DateTime.now().toIso8601String()}${file.name}");
    try {
      return UploadReturn(mountainsRef.putFile(File(file.path)), mountainsRef);
    } on FirebaseException catch (e) {
      rethrow;
    }
  }

  Future<UploadReturn> uploadProfilePic(XFile file) async {
    final mountainsRef = storageRef.child("profilePics/${DateTime.now().toIso8601String()}${file.name}");
    try {
      return UploadReturn(mountainsRef.putFile(File(file.path)), mountainsRef);
    } on FirebaseException catch (e) {
      rethrow;
    }
  }

  Future downloadimage() async {
    try {
      final ImageReference = FirebaseStorage.instance.refFromURL(
          "https://firebasestorage.googleapis.com/v0/b/ihar-7ab4b.appspot.com/o/images%2F2022-07-24T17%3A26%3A03.552022image_picker8022524664198473835.jpg?alt=media&token=5def8bb6-a63d-4fad-8039-b09d765628e5");
      final file = File("");
      await imagesRef.writeToFile(file);
      // Data for "images/island.jpg" is returned, use this as needed.
    } on FirebaseException catch (e) {
      // Handle any errors.
    }
  }
}

// should be only by uplading bloc
class UploadReturn {
  final UploadTask task;
  final Reference mountainsRef;

  UploadReturn(this.task, this.mountainsRef);
}
