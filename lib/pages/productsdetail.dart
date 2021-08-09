import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ob/widgets/home_widgets/cataloglist.dart';
import 'package:flutter_application_ob/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_ob/model/catapp.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';
import 'package:flutter_application_ob/widgets/items.dart';

class Productdetails extends StatelessWidget {
  final Items catalog;

  const Productdetails({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()), child: Image.network(catalog.img))
            ],
          ).p16().centered(),
        ));
  }
}
