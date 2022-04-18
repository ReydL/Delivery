import 'package:equatable/equatable.dart';

class ProfileState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProfileLoadedState extends ProfileState{
  final String address;

  ProfileLoadedState({required this.address});
  @override
  // TODO: implement props
  List<Object?> get props => [address];
}
class ProfileInitialState extends ProfileState{}