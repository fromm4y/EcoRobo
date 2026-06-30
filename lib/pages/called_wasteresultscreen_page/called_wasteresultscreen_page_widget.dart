import 'dart:io';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';


import '/models/lixo_model.dart';

import '/index.dart';



class CalledWasteresultscreenPageWidget extends StatefulWidget {


const CalledWasteresultscreenPageWidget({

super.key,

});



static String routeName =
'CalledWasteresultscreenPage';


static String routePath =
'/wasteResult';



@override

State<CalledWasteresultscreenPageWidget> createState()

=> _CalledWasteresultscreenPageWidgetState();



}






class _CalledWasteresultscreenPageWidgetState

extends State<CalledWasteresultscreenPageWidget>{



String? imagemPath;




late LixoModel lixo;



@override

void didChangeDependencies(){


super.didChangeDependencies();



final dados =

ModalRoute.of(context)?.settings.arguments;



/*

Aqui futuramente chega:

IA + Gemini + TensorFlow


*/



lixo = LixoModel(


nome:

"Garrafa PET",


categoria:

"plastico",


decomposicao:

"450 anos",


impacto:

"Pode causar poluição dos oceanos",


reciclagem:

"Pode virar novas embalagens",


);



}



@override

Widget build(BuildContext context){



return Scaffold(



backgroundColor:

const Color(0xffF1F7EF),




appBar:

AppBar(


backgroundColor:

const Color(0xff4C956C),


title:

const Text(

"Resultado da análise"

),


),






body:

SingleChildScrollView(


padding:

const EdgeInsets.all(20),



child:

Column(


children:[





if(imagemPath != null)

Image.file(

File(imagemPath!),

height:220,

),





const SizedBox(height:20),





Container(


padding:

const EdgeInsets.all(20),



decoration:

BoxDecoration(


color:

Colors.white,


borderRadius:

BorderRadius.circular(20),


),




child:

Column(


children:[





Text(

lixo.nome,


style:

const TextStyle(

fontSize:28,

fontWeight:FontWeight.bold,

),


),






const SizedBox(height:10),





Chip(


label:

Text(

lixo.categoria.toUpperCase()

),



),





const SizedBox(height:20),





InfoCard(

titulo:"Tempo de decomposição",

valor:lixo.decomposicao,

),





InfoCard(

titulo:"Impacto ambiental",

valor:lixo.impacto,

),





InfoCard(

titulo:"Reciclagem",

valor:lixo.reciclagem,

),





],


),


),





const SizedBox(height:30),






ElevatedButton.icon(



onPressed:(){



context.pushNamed(

CalledArexperiencescreenPageWidget.routeName

);



},



icon:

const Icon(Icons.view_in_ar),



label:

const Text(

"Explorar em AR"

),





style:

ElevatedButton.styleFrom(


backgroundColor:

const Color(0xff31572C),


foregroundColor:

Colors.white,


padding:

const EdgeInsets.symmetric(

horizontal:40,

vertical:16

),


),




),



],



),


),



);




}



}







class InfoCard extends StatelessWidget{


final String titulo;

final String valor;



const InfoCard({

super.key,

required this.titulo,

required this.valor,

});



@override

Widget build(BuildContext context){


return Container(


margin:

const EdgeInsets.only(bottom:15),



padding:

const EdgeInsets.all(15),



decoration:

BoxDecoration(


color:

const Color(0xffE8F5E9),


borderRadius:

BorderRadius.circular(15),


),



child:

Column(

crossAxisAlignment:

CrossAxisAlignment.start,



children:[


Text(

titulo,


style:

const TextStyle(

fontWeight:FontWeight.bold

),


),



const SizedBox(height:5),



Text(valor),



],


),



);


}



}