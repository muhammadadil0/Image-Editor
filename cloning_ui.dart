import 'package:flutter/material.dart';

class CloningUiWidget extends StatefulWidget {
  const CloningUiWidget({super.key});

  @override
  State<CloningUiWidget> createState() => _CloningUiWidgetState();
}

class _CloningUiWidgetState extends State<CloningUiWidget> {
  var  w;
  var h;

  @override
  void initState() {
    super.initState();
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height:  400,
                    color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(child: Container(
                          height: 350,
                          color: Colors.red,
                        )),
                        Positioned(
                          bottom: 0,
                            right: 24,
                            child: CircleAvatar(
                          radius: 50,

                        )),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            Container(
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Madrid City tour for Designer',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    height: 10,
                  ),

                  Text('This is a random Description',style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade200,

                  ),)
                ],
              ),

            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText("20", Icons.favorite_border),
                  rowIconText("34", Icons.upload),
                  rowIconText("82", Icons.message),
                  rowIconText("295", Icons.face),
                ],
              ),
            ),
            Divider(),
             Container(
               padding: EdgeInsets.all(10),
               child: Text('Helllo my name is Muhammad Adil And i am software engineer student and now i focur on learning flutter'),
             ),

          ],
        ),
      ),
    );
  }
  Widget rowIconText(String text,IconData icon ){
    return Row(
      children: [
        Text(text,style:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),),
        SizedBox(
          width: 5,
        ),
        Icon(icon),
      ],
    );
  }
}
