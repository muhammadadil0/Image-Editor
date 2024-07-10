import 'package:flutter/material.dart';
class ComplexClonningWidget extends StatelessWidget {
  const ComplexClonningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.white,
        title: Text('Muhammad Adil'),
      ),
      body: Container(
          child: Column(
            children: [
              Container(
                height: 200,
              //  color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 170,
                      height: 300,

                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS12QuNvQIsEBeYe6ecNFtaWq1uf-1jSZc2_g&s'),
                            radius: 35,
                          ),
                      Text('Muhammad Adil',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          Text('Photographer',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container(
                   //   color: Colors.orange,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                profileDetail("150", "photo"),
                                SizedBox(
                                  width: 15,
                                ),
                                profileDetail("5K", "Followers"),
                                SizedBox(
                                  width: 15,
                                ),
                                profileDetail("100", "Following"),


                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40,
                                      width: 10,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          foregroundColor: WidgetStateProperty.all(Colors.white),
                                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                                        ),
                                        onPressed: (){}, child: Text('Follow'),)),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.blue,width: 2),
                                  ),
                                  child: Icon(Icons.keyboard_arrow_down_outlined,
                                    color: Colors.blue,

                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                height: 120,
               // color: Colors.blue,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS12QuNvQIsEBeYe6ecNFtaWq1uf-1jSZc2_g&s'),fit: BoxFit.cover,),
                            shape: BoxShape.circle,
                            //color: Colors.orange,
                          ),
                        ),
                        Text("Title"),
                      ],
                    );
                  },
                ),
              ),
              // Container(
              //   height: 100,
              //   color: Colors.green,
              // ),
              Expanded(child: Container(
                 //color: Colors.yellow,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                   // color: Colors.red,

                  );
                }),
              ))
            ],
          ),
      ),
    );
  }
  Widget profileDetail(String text1, String text2){
    return Column(
      children: [
        Text(text1,
          style: TextStyle(
            fontSize: 24,
          ),

        ),
        Text(text2,
          style: TextStyle(
            fontSize: 14,
          ),

        ),
      ],
    );
  }
}
