import 'package:delivery/config/user_preference.dart';
import 'package:flutter/material.dart';


class TopRow extends StatefulWidget {

  @override
  State<TopRow> createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  String? address = '';
  @override
  void initState() {

    super.initState();
    getAddress();
  }

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 152,
            height: 31,
            alignment: Alignment.center,

            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Color(0xFFDFDFDF)),
              borderRadius:  BorderRadius.circular(7),
            ),
            child: Text(address ?? '',
              style: theme.textTheme.subtitle1,),
          )
        ],
      ),
    );
  }

  Future <void> getAddress() async{
    final storage = UserPreference();
    final storageAddress = await storage.getAddress();
    address = storageAddress;
  }
}