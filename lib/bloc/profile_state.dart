part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

// ignore: must_be_immutable
class ProfileSwiped extends ProfileState {
  final List<ProfileModel> profiles;
  const ProfileSwiped({required this.profiles});

  @override
  List<Object> get props => [profiles];
}
