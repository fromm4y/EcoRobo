import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginWidget extends StatefulWidget {

  const LoginWidget({super.key});


  static String routeName = 'Login';

  static String routePath = '/login';


  @override
  State<LoginWidget> createState() => _LoginWidgetState();

}



class _LoginWidgetState extends State<LoginWidget> {


  final TextEditingController emailController =
      TextEditingController();


  final TextEditingController senhaController =
      TextEditingController();



  bool esconderSenha = true;



  @override
  void dispose(){

    emailController.dispose();
    senhaController.dispose();

    super.dispose();

  }



  void entrar(){


    /*
    FUTURO:

    Aqui vamos colocar:

    Firebase Auth
    validação email/senha
    carregar usuário
    recuperar XP


    */

    context.goNamed(
       MainNavigationWidget.routeName
    );


  }



  @override
  Widget build(BuildContext context){


    return Scaffold(

      backgroundColor:
          const Color(0xffF1F7EF),



      body: SafeArea(

        child: Center(

          child: SingleChildScrollView(


            padding:
            const EdgeInsets.all(24),



            child: Column(


              mainAxisAlignment:
              MainAxisAlignment.center,



              children: [



                /*
                LOGO
                */

                Container(

                  height:120,

                  width:120,


                  decoration: BoxDecoration(

                    color:
                    const Color(0xff4C956C),


                    borderRadius:
                    BorderRadius.circular(35),


                  ),


                  child: const Icon(

                    Icons.eco,

                    size:70,

                    color:Colors.white,

                  ),

                ),




                const SizedBox(height:30),



                Text(

                  "EcoRobo",

                  style: TextStyle(

                    fontSize:36,

                    fontWeight:
                    FontWeight.bold,


                    color:
                    Color(0xff31572C),

                  ),

                ),



                const SizedBox(height:8),




                Text(

                  "Transforme lixo em uma missão pelo planeta",

                  textAlign:
                  TextAlign.center,


                  style: TextStyle(

                    fontSize:15,

                    color:
                    Colors.grey[700],

                  ),

                ),



                const SizedBox(height:40),




                /*
                EMAIL
                */


                TextField(


                  controller:
                  emailController,


                  decoration: InputDecoration(


                    labelText:
                    "Email",


                    prefixIcon:
                    const Icon(Icons.email),


                    filled:true,


                    fillColor:
                    Colors.white,


                    border:
                    OutlineInputBorder(

                      borderRadius:
                      BorderRadius.circular(16),

                    ),

                  ),


                ),




                const SizedBox(height:20),




                /*
                SENHA
                */


                TextField(


                  controller:
                  senhaController,


                  obscureText:
                  esconderSenha,


                  decoration: InputDecoration(


                    labelText:
                    "Senha",


                    prefixIcon:
                    const Icon(Icons.lock),



                    suffixIcon:

                    IconButton(

                      icon: Icon(

                        esconderSenha

                        ? Icons.visibility

                        : Icons.visibility_off,

                      ),



                      onPressed:(){

                        setState((){

                          esconderSenha =
                          !esconderSenha;

                        });


                      },


                    ),



                    filled:true,


                    fillColor:
                    Colors.white,


                    border:
                    OutlineInputBorder(


                      borderRadius:
                      BorderRadius.circular(16),


                    ),


                  ),



                ),





                const SizedBox(height:30),




                /*
                BOTÃO ENTRAR
                */


                SizedBox(


                  width:
                  double.infinity,


                  height:55,



                  child:
                  ElevatedButton(



                    onPressed:
                    entrar,



                    style:
                    ElevatedButton.styleFrom(


                      backgroundColor:
                      const Color(0xff4C956C),


                      shape:
                      RoundedRectangleBorder(


                        borderRadius:
                        BorderRadius.circular(18),


                      ),


                    ),



                    child:
                    const Text(


                      "Entrar",


                      style:
                      TextStyle(


                        fontSize:18,


                        color:
                        Colors.white,


                        fontWeight:
                        FontWeight.bold,


                      ),


                    ),



                  ),


                ),





                const SizedBox(height:20),





                TextButton(


                  onPressed:(){


                    // futuro:
                    // tela cadastro


                  },


                  child:
                  const Text(


                    "Criar uma conta",


                    style:
                    TextStyle(

                      color:
                      Color(0xff31572C),

                    ),

                  ),


                )



              ],


            ),


          ),


        ),


      ),


    );


  }


}