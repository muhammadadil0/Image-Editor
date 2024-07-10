import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_editor_plus/image_editor_plus.dart';

class EditorImageWidget extends StatefulWidget {
  const EditorImageWidget({super.key});

  @override
  State<EditorImageWidget> createState() => _EditorImageWidgetState();
}

class _EditorImageWidgetState extends State<EditorImageWidget> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  Future<void> PickerImage() async {
    try {
      final XFile? PickedImage = await picker.pickImage(source: ImageSource.gallery);
      setState(() {
        image = PickedImage;
      });
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: image == null
                    ? const Text(
                  "No image selected",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
                    : Image.file(
                  File(image!.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: PickerImage,
              icon: const Icon(Icons.image),
              label: const Text(
                "Select image from gallery",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 14),
                backgroundColor: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Image Editor',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          if (image!=null) Padding(padding: EdgeInsets.only(right: 20),
              child:GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageEditor(
                    image: File(image!.path),
                  )));
                },
                child: Icon(Icons.edit),)
          ) else const SizedBox(),


        ],
      ),
    );
  }
}