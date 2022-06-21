import 'package:tinda/bloc/image_model.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class ImageState extends Equatable {
  const ImageState();
  @override
  List<Object?> get props => [];
}

class ImageSent extends ImageState {
  final ImageRep images;

  const ImageSent({required this.images});

  @override
  List<Object?> get props => [images];
}
