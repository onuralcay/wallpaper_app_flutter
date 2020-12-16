import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:waiipapers/data/data.dart';
import 'package:waiipapers/data/model/wallpaper_model.dart';
import 'package:waiipapers/widgets/widget.dart';

class Categorie extends StatefulWidget {
final String categorieName;
Categorie({this.categorieName});


  @override
  _CategorieState createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  List<WallpaperModel> wallpapers = new List();

  getSearchWallpaper(String query) async {
    var response = await http.get(
        "https://api.pexels.com/v1/search?query=$query&per_page=15",
        headers: {"Authorization": apiKey});
    //print(response.body.toString());
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    getSearchWallpaper(widget.categorieName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
              elevation: 0.0,
      ),
      body: SingleChildScrollView(
              child: Container(
            child: Column(
          children: <Widget>[
            SizedBox(
                    height: 16,
                  ),
            wallpapersList(wallpapers: wallpapers, context: context)
          ],
        )),
      ),
    );
    
  }
}
