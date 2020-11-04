import 'package:flutter/material.dart';

class CardUltimosMeetupsWidget extends StatefulWidget {
  @override
  _CardUltimosMeetupsWidgetState createState() =>
      _CardUltimosMeetupsWidgetState();
}

class _CardUltimosMeetupsWidgetState extends State<CardUltimosMeetupsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265.0,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 265.0,
                height: 170.0,
                decoration: BoxDecoration(
                  color: Color(0xff090b0d),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 265.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Image.network(
                        'https://i.ytimg.com/vi/yRHl4Gy07PI/maxresdefault.jpg',
                        fit: BoxFit.fill,
                        color: Colors.blue[600],
                        colorBlendMode: BlendMode.multiply,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Como e porque contribuir em projetos de código aberto?',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          Text(
                            'por: Pedro massango',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 265.0,
                margin: EdgeInsets.only(top: 25.0),
                child: Text(
                  'Flutter LATAM Conf 2ª Edição 2020',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: 265.0,
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  'quinta-feira, 10 de setembro de 2020 19:00 até 22:00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
