import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  var imageName;
  var countryName;
  var colors;

  Country(this.countryName,this.imageName,this.colors);

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
            )
        ),
        height: MediaQuery.of(context).size.height / 7,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          elevation: 500,
          child: ListTile(
            onTap: (){

            },
            title: Padding(
              padding: const EdgeInsets.only(top: 15,left: 15),
              child: Text(
                countryName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
            trailing: Container(
              height: MediaQuery.of(context).size.height / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/${imageName}.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}