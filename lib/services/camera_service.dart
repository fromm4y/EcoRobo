import 'package:image_picker/image_picker.dart';



class CameraService {



final ImagePicker picker =
ImagePicker();




Future<XFile?> tirarFoto() async {


final XFile? imagem = await picker.pickImage(

source: ImageSource.camera,


imageQuality:80,


);



return imagem;


}



}