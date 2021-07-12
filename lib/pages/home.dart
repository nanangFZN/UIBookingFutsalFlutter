import 'package:flutter/material.dart';
import 'package:futsal_app/widgets/bottom_navigator.dart';
import 'package:futsal_app/widgets/custom_list.dart';
import 'package:futsal_app/widgets/field_card.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatelessWidget {
 
  

  @override
  Widget build(BuildContext context) {
    Widget header() {
     return Container(
      
        color: Color(0xff00BFFF),
       padding:EdgeInsets.only(top:20,left:10,right:25,),
       child: Row(
         
         children: [
          
           Column(children:[
             Image.asset('assets/player.png',
              width:75,
              height:35,   
          ),
           Text('FutsalKuy',
          style:GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color:Colors.white,
           ),
          ),
         
         
         ],
        ),
       ],
      ),
     );
    }

    Widget body(){
      return Container(
        child: Column(  
          crossAxisAlignment:CrossAxisAlignment.start, 
          children:[
            SizedBox(height:10),
            
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Text('Most Popular',
              style:GoogleFonts.poppins(
                fontSize:18,
                fontWeight:FontWeight.w600,
                color:Color(0xff000000),
                ),
              ),
            ),
            
            SizedBox(height:5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                  child: Padding(padding:EdgeInsets.only(left:25),
                  child: Row(
                  children:[
                   FieldCard(
                     text:'Sayan Futsal Family',
                     imageUrl:'assets/field.png',
                   ),
                   SizedBox(width:5),
                   FieldCard(
                     text:'AWK Futsal',
                     imageUrl:'assets/catalog_1.jpg',
                   ),
                   SizedBox(width:5),
                   FieldCard(
                     text:'Rawalumbu Futsal',
                     imageUrl:'assets/lapangan_bola.jpg',
                   ),
                   SizedBox(width:5),
                   FieldCard(
                     text:'Alibaba 2 Futsal',
                     imageUrl:'assets/catalog_2.jpg',
                   ),
                    SizedBox(width:5),
                    FieldCard(
                     text:'Town Futsal',
                     imageUrl:'assets/catalog_1.jpg',
                   ),
                  ]
                
               ),
              ),
            ),
            
            SizedBox(height:5),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text('Futsal Field',
              style: GoogleFonts.poppins(
                  fontSize:18,
                  fontWeight: FontWeight.w600,
                  color:Color(0xff000000),
              ),
              ),
            ),
           
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top:10),
               child: 
               SingleChildScrollView(
                child: Column(
                    children: [
                    CustomList(
                      imageUrl: 'assets/catalog_1.jpg',
                      title:'Sayan Futsal Family',
                      price:'Rp. 90.000'
                    ),
                    SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/lapangan.png',
                      title:'Estadio Futsal',
                      price:'Rp. 150.000'
                    ),
                    SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/catalog_3.jpg',
                      title:'Town Futsal',
                      price:'Rp. 150.000'
                    ),
                     SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/catalog_1.jpg',
                      title:'Town Futsal',
                      price:'Rp. 150.000'
                    ),
                     SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/lapangan_bola.jpg',
                      title:'Town Futsal',
                      price:'Rp. 150.000'
                    ),
                    
                    
                    ],
                 
                 ),
               ),
              

               ),
             ),
           
            
            
          ]
          ),
          
      );
    }

    return Scaffold(
      
      backgroundColor: Color(0xffDCDCDC),
    
     bottomNavigationBar: BottomNavigasi(),

   body: SingleChildScrollView(
   
    child:Column(
     
     crossAxisAlignment: CrossAxisAlignment.start,
     
      children: [
          header(),
          body()
          ],
        ),
      ),
    );
  }
}