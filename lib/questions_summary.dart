import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        final isCorrect = data['user_answer'] == data['correct_answer'];

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Q${(data['question_index'] as int) + 1}: ${data['question']}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                'Your Answer: ${data['user_answer']}',
                style: TextStyle(
                  color: isCorrect ? Colors.green : Colors.red,
                ),
              ),
              Text(
                'Correct Answer: ${data['correct_answer']}',
                style: const TextStyle(color: Colors.greenAccent),
              ),
              const Divider(color: Colors.white30),
            ],
          ),
        );
      }).toList(),
    );
  }
}
