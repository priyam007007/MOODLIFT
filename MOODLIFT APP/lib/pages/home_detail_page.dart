import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/mood.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key,@required this.catalog}) : assert(catalog!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
              child: Column(children: [
          Hero(
             tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)).h32(context),
            Expanded(child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
               child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(
                children: [
                   catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
             catalog.desc.text.color(MyTheme.darkBluishColor).textStyle(context.captionStyle).xl.bold.make()
                ],
              ).py64(),
              ),
            ))
        ],),
      ),
      );
  }
}

