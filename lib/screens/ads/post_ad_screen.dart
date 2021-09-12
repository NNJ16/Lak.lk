import 'package:flutter/material.dart';
import 'package:lak_app/constant/constants.dart';
import 'package:lak_app/screens/ads/components/app_bar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class PostAdScreen extends StatefulWidget {
  PostAdScreen(
      {required this.category, required this.subCategory, required this.icon});
  final String category;
  final String subCategory;
  final IconData icon;
  @override
  _PostAdScreenState createState() => _PostAdScreenState();
}

class _PostAdScreenState extends State<PostAdScreen> {
  String locality = "Galle";
  String subLocality = "Hapugala";

  setCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks.first.locality);
    setState(() {
      locality = placemarks.first.locality.toString();
      subLocality = placemarks.first.subLocality.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: lakAppBar(context, "Post your add"),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        widget.icon,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.category,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: ksecondaryColor,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    widget.subCategory,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Title:",
                          style: TextStyle(fontSize: 18),
                        )),
                    TextField(
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: "Enter an Ad Title"),
                      cursorColor: ksecondaryColor,
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Description:",
                          style: TextStyle(fontSize: 18),
                        )),
                    TextField(
                      minLines: 5,
                      maxLines: 10,
                      keyboardType: TextInputType.multiline,
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: "Enter a Description"),
                      cursorColor: ksecondaryColor,
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Location:",
                          style: TextStyle(fontSize: 18),
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8, left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(locality + "->" + subLocality,
                              style: TextStyle(fontSize: 16)),
                          ElevatedButton(
                            onPressed: () {
                              setCurrentLocation();
                            },
                            child: Text("Select"),
                            style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Price:",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    TextField(
                      decoration:
                          kTextFieldDecoration.copyWith(prefixText: "Rs."),
                      cursorColor: ksecondaryColor,
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Contact name:",
                          style: TextStyle(fontSize: 18),
                        )),
                    TextField(
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: "Enter a Name to Contact"),
                      cursorColor: ksecondaryColor,
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Contact phone:",
                          style: TextStyle(fontSize: 18),
                        )),
                    TextField(
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: "Enter a Phone No to Contact"),
                      cursorColor: ksecondaryColor,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {
                          setCurrentLocation();
                        },
                        child: Text("Next",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
