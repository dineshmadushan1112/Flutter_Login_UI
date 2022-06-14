import 'package:flutter/material.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press as void Function(),
      child: Padding(
        padding:  EdgeInsets.only(left: size.width/4,right: size.width/6, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Material(
              elevation: 5,
              borderRadius: BorderRadius.horizontal(right: Radius.zero),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/281/281764.png",height: size.width/10,width: size.width/10,),
        ),
            SizedBox(
              width: size.width/10,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.horizontal(right: Radius.zero),
              child: Image.network(
                "https://i.postimg.cc/L4vj5bmm/facebook-1.png",height: size.width/10,width: size.width/10,),),
            SizedBox(
              width: size.width/10,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.horizontal(right: Radius.zero),
              child: Image.network(
                "https://i1.wp.com/zagz.com/wp-content/uploads/App-apple-logo.png?fit=512%2C512&ssl=1",height: size.width/10,width: size.width/10,),
            )

          ],
        ),
      ),
    );
  }
}

