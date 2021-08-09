import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String imgPath = "assets/imgs/people.jpg";
  String name = "Varuna Yasass";
  String detail = "1 review 5 photos";
  String comment = "There is a amazing place in Sri Lanka";

  Review(this.imgPath, this.name, this.detail, this.comment);

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

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Loto',
            fontSize: 17.0
          )
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        detail,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetail
      ],
    );
  }

}