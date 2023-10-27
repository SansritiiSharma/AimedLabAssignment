import 'package:flutter/material.dart';


class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx , constraints){
      final width = constraints.minWidth;
      final height = constraints.maxHeight;


      return Scaffold(
        appBar: AppBar(
          title: const Text("Cards"),

        ),
        body: Column(
          children: [


            //Card 1
            SizedBox(
              height: width < 600 ? 110 : 130,
              width: width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,8,20,8),
                child: Card(
                  elevation: 50,
                  shadowColor: const Color.fromRGBO(206, 206, 206, 1),
                  color: const Color.fromRGBO(209, 133, 133, 1),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 10.0),
                            child: Container(
                              color: const Color.fromRGBO(196, 196, 196, 1),
                              height: width < 600 ? 25 : 35,
                              width: width / 3,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
                        child: Container(
                          color: const Color.fromRGBO(168, 216, 173, 1),
                          height: width < 600 ? 25 : 35,

                        ),),
                    ],
                  ),
                ),
              ),
            ),




            SizedBox(height: 50,),
            //Card 2


            Stack(
              children : <Widget> [
                SizedBox(
                  height: width < 600 ? 110 : 130,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,15,20,8),
                    child: Card(
                      elevation: 50,
                      shadowColor: const Color.fromRGBO(206, 206, 206, 1),
                      color: const Color.fromRGBO(209, 133, 133, 1),
                      child: Column(
                        children: [
                          Padding(
                            padding: width < 600 ? EdgeInsets.fromLTRB(8.0, 45.0, 8.0, 8.0)
                                : EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 8.0),
                            child: Container(
                              color: const Color.fromRGBO(168, 216, 173, 1),
                              height: width < 600 ? 25 : 35,

                            ),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width / 3, 0, width/3, 50),
                  child: Container(
                    color: const Color.fromRGBO(196, 196, 196, 1),
                    height: width < 600 ? 25 : 35,
                    width: width / 3,
                  ),
                ),
              ]


            ),

          ]



        ),


      );
    }
    );


  }
}
