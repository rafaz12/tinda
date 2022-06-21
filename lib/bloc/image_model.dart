import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ImageRep extends Equatable {
  final Image image;

  const ImageRep({required this.image});
  @override
  List<Object?> get props => [image];
}
