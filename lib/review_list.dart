import 'package:flutter/material.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Review("assets/imgs/girl.jpg", "Varuna Yasass", "1 review 5 photos", "There is a amazing place in Sri Lanka"),
        Review("assets/imgs/people.jpg", "Varuna Yasass", "1 review 5 photos", "There is a amazing place in Sri Lanka"),
        Review("assets/imgs/people.jpg", "John Agudelo", "1 review 5 photos", "There is a amazing place in Sri Lanka")
      ],
    );
  }
}