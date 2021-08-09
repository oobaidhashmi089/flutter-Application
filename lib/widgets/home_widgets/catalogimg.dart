import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ob/pages/home.dart';
import 'package:flutter_application_ob/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_ob/model/catapp.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';
import 'package:flutter_application_ob/widgets/items.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key key, @required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.white.rounded.p16.make().p16().w40(context);
  }
}
