import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppFireStore {
  FirebaseFirestore get firestoreinstance => FirebaseFirestore.instance;

  Future<void> requestForServer({required String token}) async {
    CollectionReference requestServerCollection = firestoreinstance.collection("admin/ServerRequest/fromusers");
    await requestServerCollection.doc(token).set({'token': token, 'time': DateTime.now()});
  }
}
