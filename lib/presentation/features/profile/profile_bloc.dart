import 'package:delivery/presentation/features/profile/profile_event.dart';
import 'package:delivery/presentation/features/profile/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBloc extends Bloc<ProfileEvent,ProfileState>{
  ProfileBloc() : super(ProfileInitialState()){
    on<ProfileChangedAddress>((event, emit) {
      emit(ProfileLoadedState(address: event.address));
    }
    );
  }

}