import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tinda/components/userprofile.dart';

class ProfileModel extends Equatable {
  final List<Image> images;
  final String name;
  final int age;
  final String occupation;

  const ProfileModel(
      {required this.images,
      required this.name,
      required this.age,
      required this.occupation});

  @override
  // TODO: implement props
  List<Object?> get props => [images, name, age, occupation];

  static List<ProfileModel> profiles = [
    ProfileModel(
      images: <Image>[
        Image.asset('assets/images/rafa.jpeg'),
        Image.asset('assets/images/zyzz.jpeg'),
      ],
      name: 'Rafa',
      age: 21,
      occupation: 'Professor',
    ),
    ProfileModel(images: <Image>[
      Image.asset('assets/images/depp.jpg'),
      Image.asset('assets/images/depp2.jpg'),
    ], name: 'Depp', age: 52, occupation: 'Actor'),
    ProfileModel(
      images: <Image>[
        Image.asset('assets/images/stijni2.png'),
        Image.asset('assets/images/stijni1.png')
      ],
      name: 'Stijn',
      age: 20,
      occupation: 'Motherfucker',
    ),
    ProfileModel(
      images: <Image>[
        Image.asset('assets/images/tony1.jpeg'),
        Image.asset('assets/images/tony2.jpeg'),
        Image.asset('assets/images/tony3.jpeg'),
        Image.asset('assets/images/tony4.jpeg')
      ],
      name: 'Tony',
      age: 21,
      occupation: 'Fiddle Minger',
    ),
  ];
}
