import 'package:equatable/equatable.dart';

class ProfileEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProfileChangedAddress extends ProfileEvent{
  final String address;

  ProfileChangedAddress({required this.address});
  @override
  // TODO: implement props
  List<Object?> get props => [address];
}