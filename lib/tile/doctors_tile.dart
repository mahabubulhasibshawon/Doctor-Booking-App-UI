import 'package:flutter/material.dart';

import '../pages/pages.dart';

class DoctorsTile extends StatelessWidget {
  const DoctorsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorsInfo()));
      },
    );
  }
}
