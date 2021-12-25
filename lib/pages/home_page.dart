import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:const Text("Cars", style:TextStyle(color: Colors.black, fontSize: 25)),
        // brightness: Brightness.light,
        actions: [
          IconButton(
            icon:const Icon(Icons.notifications_none, color: Colors.black,),
            onPressed: () {
        
            },
          ),
          IconButton(
            icon:const Icon(Icons.shopping_cart, color: Colors.black,),
            onPressed: () {
        
            },
          ),
        ],
      ),

      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //  #Category
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              // #makeItems
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      )
    );
  }

  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color:type ? Colors.grey[200] : Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text, style: TextStyle(fontSize: type ? 18 : 16, fontWeight: type ? FontWeight.bold : FontWeight.normal),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit:BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset:const Offset(0,10)
          )
        ]
      ),
      child: Container(
        padding:const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lazizbek for Car", style: TextStyle(color: Colors.white, fontSize: 25),),
                      SizedBox(height: 10,),
                      Text("Electric", style: TextStyle(color:Colors.white , fontSize: 20),)
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Center(
                    child:Icon(Icons.favorite_border, size: 20,)
                  ),
                )
              ],
            ),
            Text("1000\$", style: TextStyle(color:Colors.white, fontSize:25),),
          ],
        ),
      ),
    );
  }

}