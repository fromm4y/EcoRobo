import 'package:flutter/material.dart';

import '/pages/home_dashboard/home_dashboard_widget.dart';
import '/pages/scan_camera/scan_camera_widget.dart';
import '/pages/waste_catalog/waste_catalog_widget.dart';



class MainNavigationWidget extends StatefulWidget {


  const MainNavigationWidget({super.key});


  static String routeName = 'MainNavigation';

  static String routePath = '/main';



  @override
  State<MainNavigationWidget> createState() =>
      _MainNavigationWidgetState();

}



class _MainNavigationWidgetState 
extends State<MainNavigationWidget> {



  int paginaAtual = 0;



  final paginas = [


    HomeDashboardWidget(),


    ScanCameraWidget(),


    WasteCatalogWidget(),


  ];




  @override
  Widget build(BuildContext context){


    return Scaffold(


      body:

      paginas[paginaAtual],





      bottomNavigationBar:


      Container(


        decoration: BoxDecoration(


          boxShadow:[

            BoxShadow(

              color:
              Colors.black12,

              blurRadius:10,

            )

          ]

        ),



        child:

        BottomNavigationBar(



          currentIndex:
          paginaAtual,



          selectedItemColor:
          const Color(0xff4C956C),



          unselectedItemColor:
          Colors.grey,



          onTap:(index){


            setState((){


              paginaAtual=index;


            });


          },



          items:[



            const BottomNavigationBarItem(


              icon:
              Icon(Icons.home),


              label:"Home",

            ),





            const BottomNavigationBarItem(


              icon:
              Icon(Icons.camera_alt),


              label:"Scanner",

            ),





            const BottomNavigationBarItem(


              icon:
              Icon(Icons.recycling),


              label:"Catálogo",

            ),



          ],


        ),



      ),


    );


  }



}