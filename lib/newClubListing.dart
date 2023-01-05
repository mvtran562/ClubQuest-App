import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class NewListing extends StatefulWidget {
  const NewListing({super.key});

  @override
  State<NewListing> createState() => _NewListingState();
}

class _NewListingState extends State<NewListing> {
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile == null) {
      print('The value of the input is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          Text('Add a Club Listing',
              style: GoogleFonts.bebasNeue(fontSize: 52)),
          Text('Enter the name of your club',
              style: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 2)),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                      maxLines: 1,
                      maxLength: 50,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Ex. SCU Car Club, SCU Skate Club, Cal Phi')))),
          Text('Short intro about your club',
              style: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 2)),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                      maxLines: 2,
                      maxLength: 50,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ex. Join if you like biking!')))),
          Text('Write a description for your club',
              style: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 2)),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                      maxLines: 10,
                      maxLength: 200,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Ex. We do stuff x times a month where we do fun stuff like this or that')))),
          Text('Join Link',
              style: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 2)),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                      maxLines: 1,
                      maxLength: 200,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Users will be directed to this link to join')))),
          Text('Club Logo',
              style: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 2)),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              _getFromGallery();
            },
            child: const Text("Upload"),
          ),
          Text('Club Photo',
              style: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 2)),
          MaterialButton(
              color: Colors.red,
              onPressed: () {
                _getFromGallery();
              },
              child: const Text("Upload")),
          MaterialButton(
              color: Colors.red,
              onPressed: () {
                _getFromGallery();
              },
              child: const Text("SUBMIT"))
        ]))));
  }
}
