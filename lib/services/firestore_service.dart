import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<Map<String, dynamic>> fetchBannerData(String documentId) async {
    final doc = await _db.collection('products').doc(documentId).get();
    return doc.data() ?? {};
  }
}