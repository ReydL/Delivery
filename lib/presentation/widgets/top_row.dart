import 'package:delivery/config/user_preference.dart';
import 'package:delivery/presentation/features/profile/profile_bloc.dart';
import 'package:delivery/presentation/features/profile/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TopRow extends StatelessWidget {
  const TopRow({Key? key}) : super(key: key);

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
              border: Border.all(width: 1,color: const Color(0xFFDFDFDF)),
              borderRadius:  BorderRadius.circular(7),
            ),
            child: BlocBuilder<ProfileBloc,ProfileState>(
              builder: (context, state) {
                if(state is ProfileLoadedState){
                  return Text(state.address,
                    style: theme.textTheme.subtitle1,);
                }
                return const Text('');
              }),
            )

        ],
      ),
    );
  }
}


