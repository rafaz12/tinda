import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tinda/bloc/image_event.dart';
import 'package:tinda/bloc/image_state.dart';
import 'package:tinda/bloc/image_bloc.dart';
import 'package:tinda/bloc/image_model.dart';
import 'package:tinda/screens/profileUI.dart';
import 'package:tinda/components/profile_image.dart';
import 'package:tinda/components/navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? file;

  Future pickImage(ImageSource source) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file == null) return;
    final imageTemporary = File(file.path);
    this.file = imageTemporary;
  }

  ListTile imageType(String text, IconData icon, ImageSource src) {
    return ListTile(
        leading: Icon(icon),
        title: Text(text),
        onTap: () async {
          Navigator.pop(context);
          await pickImage(src);
          if (file != null)
            context
                .read<ImageBloc>()
                .add(GaleryEvent(ImageRep(image: Image.file(this.file!))));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
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
                      Text('Profile'),
                    ]))),
        body: Builder(builder: (context) {
          return BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
            if (state is ImageSent) {
              return Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(360),
                      bottomRight: Radius.circular(360)),
                  color: Colors.white,
                ),
                height: 475,
                width: 700,
                child: Stack(children: <Widget>[
                  ProfileImage(image: state.images.image),
                  Align(
                      alignment: Alignment(0, 0.25),
                      child: Text(
                        'Rafael, 21',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Align(
                      alignment: Alignment(0.0, 0.9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(mainAxisSize: MainAxisSize.min, children: [
                            ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                        ),
                                      ),
                                      builder: (_) {
                                        return BlocProvider.value(
                                          value: BlocProvider.of<ImageBloc>(
                                              context),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              imageType(
                                                  'Gallery',
                                                  Icons.collections,
                                                  ImageSource.gallery),
                                              imageType('Camera', Icons.camera,
                                                  ImageSource.camera)
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.purple,
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    primary: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 5)),
                            SizedBox(
                              height: 15,
                            ),
                            Text('ADD PIC',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 75,
                                width: 75,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.edit,
                                      size: 30,
                                      color: Colors.purple,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(), //<-- SEE HERE
                                        padding: EdgeInsets.all(20),
                                        primary: Colors.white,
                                        shadowColor: Colors.grey,
                                        elevation: 5)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('EDIT',
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.security,
                                    color: Colors.purple,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(), //<-- SEE HERE
                                      padding: EdgeInsets.all(20),
                                      primary: Colors.white,
                                      shadowColor: Colors.grey,
                                      elevation: 5)),
                              SizedBox(
                                height: 15,
                              ),
                              Text('SECURITY',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )),
                ]),
              );
            } else {
              return Container(
                child: Text("state is not ImageSent State"),
              );
            }
          });
        }));
  }
}
