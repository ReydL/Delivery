
import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text('Михаил Павлович Тереньтьев',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16,
                      ),),
                      SizedBox(height: 5,),
                      Text('+7 (934) 283 84-29',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14,
                        ),),
                      SizedBox(height: 40,),
                      Container(
                        alignment: Alignment.center,
                        width: 355,
                        height: 76,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Card(
                          child: ListTile(
                            title: Text('Адрес для доставки',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 10,
                              ),),
                            subtitle: Text('Можайская, 250',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),),
                            trailing: TextButton(
                              onPressed: (){},
                              child:Text('Редактировать',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14,
                                color: Colors.orange,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 76,
                          width: 355,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12,width: 1),
                          ),
                          child: ListTile(
                            title: Text('Мои заказы'),
                            leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_sharp),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                     InkWell(
                       onTap: (){},
                       child:  Container(
                         alignment: Alignment.center,
                         height: 76,
                         width: 355,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Colors.black12,width: 1),
                         ),
                         child: ListTile(
                           title: Text('Настройки'),
                           leading: Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.grey,
                             ),
                           ),
                           trailing: Icon(Icons.arrow_forward_sharp),
                         ),
                       ),
                     )
                    ],
                  )
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
