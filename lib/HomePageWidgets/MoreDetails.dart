import 'package:flutter/material.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 28,
      width: 126,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('More Details',style: TextStyle(fontSize: 15,color: Colors.black),),
            Icon(Icons.arrow_forward_outlined,color: Colors.black, )
          ],
        ),
      ),
    );
  }
}
