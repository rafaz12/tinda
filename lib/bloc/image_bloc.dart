import 'package:tinda/bloc/image_event.dart';
import 'package:tinda/bloc/image_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'image_model.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc()
      : super(ImageSent(
            images: ImageRep(
          image: Image.asset('assets/images/tony3.jpeg'),
        ))) {
    on<GaleryEvent>(handleGallery);
  }

  handleGallery(GaleryEvent event, Emitter<ImageState> emit) {
    if (state is ImageSent) {
      emit(ImageSent(images: ImageRep(image: event.image.image)));
    }
  }
}
