import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    const correctColor = Color.fromARGB(255, 39, 183, 183);
    const wrongColor = Color.fromARGB(255, 225, 44, 144);

    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          data['isCorrect'] as bool ? correctColor : wrongColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      ((data['questionIndex'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 35, 2, 2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 244, 216, 216),
                          ),
                        ),
                        Text(
                          data['userAnswer'] as String,
                          style: TextStyle(
                            color: data['isCorrect'] as bool
                                ? correctColor
                                : wrongColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          data['correctAnswer'] as String,
                          style: const TextStyle(
                            color: correctColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
