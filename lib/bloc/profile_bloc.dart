import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tinda/bloc/profile_model.dart';
import 'package:tinda/components/userprofile.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileSwiped(profiles: ProfileModel.profiles)) {
    on<RemoveEvent>(removeProfile);
  }
  removeProfile(RemoveEvent event, Emitter<ProfileState> emit) {
    if (state is ProfileSwiped) {
      final state = this.state as ProfileSwiped;
      emit(ProfileSwiped(
          profiles: List.from(state.profiles)..remove(event.profile)));
    }
  }
}
