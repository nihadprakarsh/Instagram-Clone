import 'package:flutter/material.dart';
import 'package:instagram/gradient_ring_widget.dart';

class Listtile extends StatelessWidget {
  final text1;
  final text2;
  final text3;
  final image;

  const Listtile(
      {Key? key, 
      @required this.text1,
      @required this.text2,
      @required this.text3,
      @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text1, style: TextStyle(fontSize: 15)),
      contentPadding: EdgeInsets.fromLTRB(6, 0, 15, 0),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          Text(
            text3,
            style: TextStyle(fontSize: 14), 
          )
        ],
      ),
      trailing: Icon(Icons.camera_alt_outlined, size: 28,),
      leading: WGradientRing(
        child: Container(
          width: 62,
          height: 62,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
