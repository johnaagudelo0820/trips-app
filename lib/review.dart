import 'package:flutter/material.dart'

class Review extends StatelessWidget {

  String imgPath = "assets/imgs/people.jpg";

  Review(this.imgPath)

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgPath))
      ),
    );

    return Row(
      children: <Widget>[
        photo
      ],
    )
  }

}