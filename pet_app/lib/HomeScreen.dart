import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:pet_app/screen2.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   double xoffset=0;
   double yoffset=0;
   double scalefactor=1;

   bool isdraweropen=false;





   @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isdraweropen?40:0.0),
      ),
      duration: Duration(milliseconds: 250 ),

      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              isdraweropen?IconButton(icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    xoffset=0;
                    yoffset=0;
                    scalefactor=1;
                    isdraweropen=false;
                  },);
                },
              ):
              IconButton(icon: Icon(Icons.menu),onPressed:() {
               setState(() {
                 xoffset=230;
                 yoffset=150;
                 scalefactor=0.6;
                 isdraweropen=true;
               });

             },),
             Column( children:<Widget>[
              Text("Location"),
              Row( children:<Widget>[
                IconButton(icon: Icon(Icons.location_on,color: primarycolor,),),
              Text("Ukraine")]
                ,),
            ],),
            CircleAvatar(),
            
          ],
          ),
          ),

           Container(
             child: TextField(
                   decoration: InputDecoration(

                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.transparent),
                       borderRadius: BorderRadius.all(Radius.circular(30)),

                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       borderSide: BorderSide(color: primarycolor),
                     ),

                     prefixIcon: Icon(Icons.search,color: primarycolor),
                     hintText: "Search Pet",
                     filled: true,
                     fillColor: Colors.grey[200],
                   ),
             ),
             padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
           ),

            Container( height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                   child: Column(
                     children:<Widget> [
                       Container(

                         padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 20),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           boxShadow: ListShadow,
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Image.asset(categories[index]['iconPath'],height: 50,width: 50,),
                       ),
                       Text(categories[index]['name']),

                     ],
                   ),
                  );

              },
            ),
            ),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
             },
             child: Container(
               height: 240,
               margin: EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                 children: <Widget>[
                   Expanded(
                     child: Stack(
                       children: <Widget>[
                         Container(
                           decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(20),boxShadow: ListShadow),
                           margin: EdgeInsets.only(top:40),

                         ),
                         Align(
                           child: Hero(tag:1,child: Image.asset('images/pet-cat2.png'),
                           ),
                         ),
                       ],
                     ),
                   ),
                   Expanded(child: Container(
                     margin: EdgeInsets.only(top: 60,bottom: 20),
                     decoration: BoxDecoration(color: Colors.white,boxShadow: ListShadow,borderRadius: BorderRadius.only(
                       topRight: Radius.circular(20),
                       bottomRight: Radius.circular(20),
                     ),),
                     child: Column(
                       crossAxisAlignment : CrossAxisAlignment.start,
                       children:<Widget> [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:<Widget> [
                             SizedBox(width:5,),
                             Center(child: Text("Sola", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 30,),),),
                             IconButton(icon: Icon(Icons.mail),color: primarycolor,  )
                           ],
                         ),


                         Text("Abisian Cat",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                         SizedBox(height: 10,),
                         Text("2 years",textAlign:TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                         SizedBox(height:10,),
                         Row(
                           children: <Widget>[
                             IconButton(icon: Icon(Icons.location_on,color: primarycolor),),
                             Text('Distance 2.6 km',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                           ],
                         ),

                       ],
                     ),
                   ),)
                 ],
               ),
             ),
           ),


            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(20),boxShadow: ListShadow),
                          margin: EdgeInsets.only(top:40),

                        ),
                        Align(
                          child: Image.asset('images/pet-cat1.png'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 60,bottom: 20),
                    decoration: BoxDecoration(color: Colors.white,boxShadow: ListShadow,borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),),
                    child: Column(
                      crossAxisAlignment : CrossAxisAlignment.start,
                      children:<Widget> [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            SizedBox(width:5,),
                            Center(child: Text("Orion", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 30,),),),
                            IconButton(icon: Icon(Icons.mail),color: primarycolor,  )
                          ],
                        ),


                        Text("Abisian Cat",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("1.5 years",textAlign:TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height:10,),
                        Row(
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.location_on,color: primarycolor),),
                            Text('Distance 7.8 km',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          ],
                        ),

                      ],
                    ),

                  ),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
   }

}
