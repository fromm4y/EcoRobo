import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../services/camera_service.dart';
import '/index.dart';
import 'package:image_picker/image_picker.dart';
import '../../models/imagem_model.dart';


class ScanCameraWidget extends StatefulWidget {


const ScanCameraWidget({super.key});



static String routeName =
'ScanCamera';


static String routePath =
'/scanCamera';



@override

State<ScanCameraWidget> createState() =>
_ScanCameraWidgetState();


}





class _ScanCameraWidgetState
extends State<ScanCameraWidget>{



final CameraService cameraService =
CameraService();



ImagemModel? imagem;



bool carregando=false;




Future<void> abrirCamera() async {



setState((){


carregando=true;


});



final foto =
await cameraService.tirarFoto();



setState((){

imagem = ImagemModel(

caminho: foto!.path

);

carregando=false;

});




if(imagem != null){


context.pushNamed(

CalledWasteresultscreenPageWidget.routeName,


extra:{


'imagem': imagem


}


);



}



}






@override

Widget build(BuildContext context){



return Scaffold(



backgroundColor:

const Color(0xffF1F7EF),





body:


Center(


child:


Column(



mainAxisAlignment:
MainAxisAlignment.center,



children:[





const Icon(

Icons.camera_alt,

size:90,

color:Color(0xff4C956C),

),




const SizedBox(height:20),





const Text(

"Scanner EcoRobo",

style:TextStyle(

fontSize:26,

fontWeight:FontWeight.bold

),


),





const SizedBox(height:10),



const Text(

"Aponte a câmera para um lixo",

),





const SizedBox(height:40),




ElevatedButton.icon(



onPressed:

carregando

?

null

:

abrirCamera,




icon:

const Icon(Icons.camera),




label:

Text(

carregando

?

"Processando..."

:

"Abrir câmera"


),





style:

ElevatedButton.styleFrom(



backgroundColor:

const Color(0xff4C956C),



foregroundColor:

Colors.white,



padding:

const EdgeInsets.symmetric(

horizontal:40,

vertical:18

),


),




)





],



),


),


);



}



}