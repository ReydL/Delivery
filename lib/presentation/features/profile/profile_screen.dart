import 'package:delivery/config/user_preference.dart';
import 'package:delivery/presentation/features/profile/profile_bloc.dart';
import 'package:delivery/presentation/features/profile/profile_event.dart';
import 'package:delivery/presentation/features/profile/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        'Михаил Павлович Тереньтьев',
                        style: theme.textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+7 (934) 283 84-29',
                        style: theme.textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      AdressRow(),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 76,
                        width: 355,
                        decoration: BoxDecoration(
                          color: theme.bottomNavigationBarTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: ListTile(
                          onTap: () {},
                          title: Text(
                            'Мои заказы',
                            style: theme.textTheme.bodyText1,
                          ),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_sharp),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 76,
                        width: 355,
                        decoration: BoxDecoration(
                          color: theme.bottomNavigationBarTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/settings');
                          },
                          title: Text(
                            'Настройки',
                            style: theme.textTheme.bodyText1,
                          ),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_sharp),
                        ),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class AdressRow extends StatefulWidget {
  const AdressRow({Key? key}) : super(key: key);

  @override
  State<AdressRow> createState() => _AdressRowState();
}

class _AdressRowState extends State<AdressRow> {
  String preaddress = '';
  @override
  void initState() {
    super.initState();

    // print(address);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      width: 355,
      height: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        color: theme.bottomNavigationBarTheme.backgroundColor,
        child: ListTile(
          title:const Text(
            'Адрес для доставки',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 10,
            ),
          ),
          subtitle: BlocBuilder<ProfileBloc,ProfileState>(
            builder: (context,state){
              if(state is ProfileLoadedState){
                return Text(state.address);
              }
              return Text('');
            },
          ),
          trailing: TextButton(
            onPressed: () {

              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: theme.backgroundColor,
                      title: Text(
                        'Укажите адрес доставки: ',
                        style: theme.textTheme.bodyText1,
                      ),
                      content: TextField(
                        onChanged: (String value) {
                          preaddress = value;
                        },
                      ),
                      actions: [
                        TextButton(
                            child: Text(
                              'Изменить',
                              style: theme.textTheme.subtitle1!
                                  .copyWith(color: theme.primaryColor),
                            ),
                            onPressed: () {
                                BlocProvider.of<ProfileBloc>(context).add(ProfileChangedAddress(address: preaddress));
                                Navigator.of(context).pop();

                            }),
                        TextButton(
                            child: Text('Отмена',
                                style: theme.textTheme.subtitle1!
                                    .copyWith(color: theme.primaryColor)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ],
                    );
                  });
            },
            child: Text(
              'Редактировать',
              style: theme.textTheme.subtitle1!
                  .copyWith(color: theme.primaryColor),
            ),
          ),
        ),
      ),
    );
  }



}
