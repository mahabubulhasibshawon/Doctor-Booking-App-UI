import 'package:flutter/material.dart';

class SpecialistTile extends StatelessWidget {
  final String? imgAssetPath;
  final String? speaciality;
  final int? noOfDoctors;
  final Color? backColor;

  const SpecialistTile(
      {super.key,
      this.imgAssetPath,
      this.speaciality,
      this.noOfDoctors,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: backColor, borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            speaciality!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
          SizedBox(height: 6),
          Text(
            "$noOfDoctors Doctors",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
          ),
          Image.asset(
            imgAssetPath!,
            height: 160,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}
