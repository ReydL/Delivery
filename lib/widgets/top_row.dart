import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 12,bottom: 14),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 152,
              height: 31,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Color(0xFFDFDFDF)),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text('Можайская, 250',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16,
                ),),
            )
          ],
        )

    );
  }
}