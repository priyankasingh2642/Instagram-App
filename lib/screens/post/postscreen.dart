import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Postscreen extends StatefulWidget{
  const Postscreen({super.key});
  @override
  State<Postscreen> createState() => _PostscreenState();
}

class _PostscreenState extends State<Postscreen> {
  final ImagePicker imagePicker = ImagePicker();
  XFile? selectedImage;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      getImage();
    });
  }

  Future<void> getImage() async{
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if(image != null){
      setState(() {
        selectedImage = image;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Post",
          style: TextStyle(fontSize:15 ,fontWeight:FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black87,
        leading: const Icon(Icons.close_rounded,
          size: 50,
          color: Colors.white,),
        actions: [
          Text("Next",style: TextStyle(
              fontSize: 15,fontWeight:FontWeight.bold,color: Colors.blueAccent.shade700
          ),)
        ],
      ),
      body: Column(
        children: [
          Expanded(flex: 2,
              child: selectedImage != null ?
              SizedBox(
                width: double.infinity,
                child: Image.file(File(selectedImage!.path),fit: BoxFit.cover,),
              )
                  :Image.asset("assets/images/image13.jpg")),
          Expanded(child: Container())
        ],
      ),
    );
  }
}

