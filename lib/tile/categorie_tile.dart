import 'package:flutter/material.dart';

import '../pages/pages.dart';

class CategorieTile extends StatefulWidget {
  const CategorieTile({super.key, this.categorie, this.isSelected, this.context});
  
  final String? categorie;
  final bool? isSelected;
  final HomePageState? context;

  @override
  State<CategorieTile> createState() => _CategorieTileState();
}

class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.context!.setState(() {
          selectedCategorie = widget.categorie;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
          color: widget.isSelected! ? Color(0xffFFD0AA) : Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text(
          widget.categorie!,
          style: TextStyle(
            color: widget.isSelected! ? Color(0xffFC9535) : Color(0xffA1A1A1)
          ),
        ),
      ),
    );
  }
}
