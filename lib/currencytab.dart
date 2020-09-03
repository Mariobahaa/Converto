import 'package:flutter/material.dart';

class CurrencyTab extends StatefulWidget {
  @override
  _CurrencyTabState createState() => _CurrencyTabState();
}

class _CurrencyTabState extends State<CurrencyTab> {
  TextEditingController box1controller = TextEditingController(text: '0');
  TextEditingController box2controller = TextEditingController(text: '0');

  double box1 = 0.0;
  double box2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(),
          flex: 1,
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: TextField(
                    keyboardType: TextInputType.number,
                    enabled: true,
                    controller: box1controller,
                    textAlign: TextAlign.center,
                    onTap: () {
                      setState(() {
                        box1controller.clear();
                      });
                    }),
              ),
              Expanded(
                child: SizedBox(),
                flex: 2,
              ),
              Expanded(
                flex: 3,
                child: TextField(
                  keyboardType: TextInputType.number,
                  enabled: false,
                  controller: box2controller,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: TextField(
                    keyboardType: TextInputType.number,
                    enabled: true,
                    controller: box1controller,
                    textAlign: TextAlign.center,
                    onTap: () {
                      setState(() {
                        box1controller.clear();
                      });
                    }),
              ),
              Expanded(
                child: SizedBox(),
                flex: 2,
              ),
              Expanded(
                flex: 3,
                child: TextField(
                  keyboardType: TextInputType.number,
                  enabled: false,
                  controller: box2controller,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(),
          flex: 1,
        )
      ],
    );
  }
}
