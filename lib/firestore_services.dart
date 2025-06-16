import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> saveQuizResult({
  required List<String> userAnswers,
  required int score,
}) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  await firestore.collection('quiz_results').add({
    'user_answers': userAnswers,
    'score': score,
    'timestamp': FieldValue.serverTimestamp(),
  });
}
