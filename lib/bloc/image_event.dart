import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'image_model.dart';

abstract class ImageEvent extends Equatable {
  const ImageEvent();
  @override
  List<Object?> get props => [];
}

class GaleryEvent extends ImageEvent {
  final ImageRep image;
  const GaleryEvent(this.image);

  @override
  // TODO: implement props
  List<Object?> get props => [image];
}
