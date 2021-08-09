import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ob/pages/home.dart';
import 'package:flutter_application_ob/pages/productsdetail.dart';
import 'package:flutter_application_ob/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_ob/model/catapp.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';
import 'package:flutter_application_ob/widgets/items.dart';

import 'catalogimg.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Mitems.items.length,
      itemBuilder: (context, index) {
        final catalog = Mitems.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Productdetails(
                          catalog: catalog,
                        ))),
            child: CatalogItmes(catalog: catalog));
      },
    );
  }
}

class CatalogItmes extends StatelessWidget {
  final Items catalog;
  const CatalogItmes({
    Key key,
    @required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.img)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.color(Mthemes.darkblue).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Mthemes.darkblue),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: Text("BUY"))
                ])
          ],
        ))
      ],
    )).white.rounded.square(150).make().p16();
  }
}
