import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryPage extends StatelessWidget {
  final String name;

  GalleryPage({Key? key, required this.name}) : super(key: key);

  List<String> imagePaths = [
    'assets/images/imageone.jpg',
    'assets/images/imagetwo.jpg',
    'assets/images/imagethree.jpg',
    'assets/images/imagefour.jpg',
    'assets/images/imagefive.jpg',
    'assets/images/imagesix.jpg',
    'assets/images/imageseven.jpg',
    'assets/images/imageeight.jpg',
    'assets/images/imagenine.jpg',
    'assets/images/imageten.jpg',
    'assets/images/imageeleven.jpg',
    'assets/images/imagetwelve.jpg',
    'assets/images/imagethirteen.jpg',
    'assets/images/imagefourtheen.jpg',
    'assets/images/imagefifththeen.jpg',
    'assets/images/imageone.jpg',
    'assets/images/imagetwo.jpg',
    'assets/images/imagethree.jpg',
    'assets/images/imagefour.jpg',
    'assets/images/imagefive.jpg',
    'assets/images/imagesix.jpg',
  ];

  String? imageFile;
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      imageFile = pickedFile.path;
      // Handle the picked image file
      // For now, we'll just print the path to the console
      print('Image Path: $imageFile');
    } else {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundimage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            ' $name',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Positioned(
                            right: 49,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/profileimages.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Add log out logic here
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(Icons.arrow_circle_left, color: Colors.red),
                    ),
                    label: Text('Log Out',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: Container(
                            width: 550,
                            child: AlertDialog(
                              backgroundColor: Colors.white.withOpacity(0.7),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      _pickImage(ImageSource.gallery);
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFFADBF2),
                                      elevation: 0,
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: imageFile == null
                                              ? AssetImage(
                                                  'assets/images/galleryimage.jpg')
                                              : Image.file(File(imageFile!))
                                                  .image,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          'Gallery',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              height: 2),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  ElevatedButton(
                                    onPressed: () {
                                      _pickImage(ImageSource.camera);
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFD8E6F2),
                                      elevation: 0,
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: imageFile == null
                                              ? AssetImage(
                                                  'assets/images/cameraimage.jpg')
                                              : Image.file(File(imageFile!))
                                                  .image,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          'Camera',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            height: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child:
                        Icon(Icons.arrow_circle_up_sharp, color: Colors.orange),
                  ),
                  label: Text('Upload',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GridView.builder(
                  itemCount: imagePaths.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Add logic for when an image is tapped
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(imagePaths[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
