import 'package:covid/models/country_model.dart';
import 'package:covid/presentation/widgets/description_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatefulWidget {
  final Country_model country;

  const Description({Key key, this.country}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState(country);
}

class _DescriptionState extends State<Description> {
  final Country_model country;

  _DescriptionState(this.country);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green[200],
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              country.Country,
              style: GoogleFonts.aBeeZee(),
            ),
            backgroundColor: Colors.deepOrange[300],
            centerTitle: true,
          ),
          body: CountryDescription(country),
        ),
      ),
    );
  }
}
