part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class RemoveEvent extends ProfileEvent {
  final ProfileModel profile;
  const RemoveEvent({required this.profile});

  @override
  List<Object> get props => [profile];
}
