import 'package:flutter/material.dart';

class DescriptionTextWidget2 extends StatefulWidget {
  String? text;

  DescriptionTextWidget2({@required this.text});

  @override
  _DescriptionTextWidgetState2 createState() => new _DescriptionTextWidgetState2();
}

class _DescriptionTextWidgetState2 extends State<DescriptionTextWidget2> {
  String? firstHalf;
  String? secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if ((widget.text?.length??0) > 50) {
      firstHalf = widget.text?.substring(0, 95);
      secondHalf = widget.text?.substring(95, widget.text?.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf!.isEmpty
          ? new Text("${firstHalf}")
          : new Column(
        children: <Widget>[
          new Text(flag ? ("$firstHalf"+ "...") : ("$firstHalf" + "$secondHalf")),
          new InkWell(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  new Text(
                    flag ? "show more" : "show less",
                    style: new TextStyle(color: Colors.blue),
                  ),
              ],
            ),
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}