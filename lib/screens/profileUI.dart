// ignore_for_file: file_names, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tinda/bloc/profile_bloc.dart';
import 'package:tinda/components/userprofile.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilesState();
  }
}

class ProfilesState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Align(
                alignment: Alignment.topLeft,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite,
                            color: Colors.purple, size: 30.0),
                        onPressed: () {},
                      ),
                      Text('Sexy'),
                    ]))),
        backgroundColor: Colors.grey,
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileSwiped && state.profiles.isNotEmpty) {
              return GestureDetector(
                onHorizontalDragEnd: (details) {
                  context
                      .read<ProfileBloc>()
                      .add(RemoveEvent(profile: state.profiles[0]));
                },
                child: UserProfile(
                  age: state.profiles[0].age,
                  images: state.profiles[0].images,
                  occupation: state.profiles[0].occupation,
                  name: state.profiles[0].name,
                  swiped: false,
                ),
              );
            } else {
              return Container(
                height: 700,
                width: 700,
                child: Column(
                  children: [
                    Lottie.network(
                        'https://assets5.lottiefiles.com/private_files/lf30_sdbllogr.json'),
                  ],
                ),
              );
            }
          },
        ));
  }
}
