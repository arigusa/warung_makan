import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, 
      child: badges.Badge(
          position: badges.BadgePosition.topEnd(top: 0, end: 0),
          badgeContent: Text('1', style: GoogleFonts.montserrat(
            color: Colors.black),),
          child: Icon(Icons.shopping_cart,),
      )),
      body: SafeArea(child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 90,
              height: 90,
              decoration:  BoxDecoration( 
                borderRadius: BorderRadius.circular(20),     
                image:  DecorationImage( 
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://img-global.cpcdn.com/recipes/e27b1e20535ac0be/1200x630cq70/photo.jpg'
                  )
                ),
                
                ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            height: 140,
            // color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('nasi telor', 
                style: GoogleFonts.montserrat(
                  fontSize: 16, 
                  fontWeight:  FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                Expanded(
                  child: Text(
                    'nasi sama telor',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                      fontSize: 13),
                      ),
                      ),
                      // SizedBox(height: 5),
                 Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rp. 10.000', 
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.remove_circle, color: Colors.red,),),
                            Text(
                              '0',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                fontSize: 13),
                               ),
                            IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.add_circle, color: Colors.blue,),),
                            ],
                          )
                        ],
                      )     
              ],
            ),
          )
        ],
      )),);
    
  }
}