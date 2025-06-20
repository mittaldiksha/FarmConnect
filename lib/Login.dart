import 'package:farm_connect/Pages/Home.dart';
import 'package:farm_connect/Pages/HomePage.dart';
import 'package:farm_connect/Widgets/MyContainer.dart';
import 'package:farm_connect/main.dart';
import 'package:farm_connect/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:farm_connect/SignUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool tracker= false;

  final GlobalKey<FormState> _key = GlobalKey <FormState> ();
  TextEditingController _email = TextEditingController();
  TextEditingController _pswd = TextEditingController();
  final authservice = AuthService();

  void login() async{
    try{
      final user = await authservice.login(_email.text, _pswd.text);
      if(user!= null){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
      }
    } catch (e){
      print("Error :"+ e.toString() );
    }
  }

  void moveToHome(BuildContext context){
    if(_key.currentState!.validate()){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     body:Container(
         child:  Column(
             children: [
               Spacer(),

               Padding(
                 padding: const EdgeInsets.all(30),
                 child:Column(
                     children: [
                       Image.asset("assets/images/mrkt2.jpg"),
                       SizedBox(
                         height: 10,
                       ),
                       Text('Welcome Back', style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 35),),
                       SizedBox(
                         height: 10,
                       ),
                       Form(
                         key: _key,
                         child: Column(
                           children: [
                             TextFormField(
                               controller: _email,
                               validator: (value){
                               if(value!.isEmpty)
                                 return "Please Enter Email";

                               else if(!value.contains("@gmail.com")){
                                 return "Please Enter valid Email";
                               }
                               return null;
                             },
                         decoration: InputDecoration(
                           label: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                                    Icon(
                                      Icons.mail,
                                      color: Colors.black,),
                                    SizedBox(
                                       width: 20,
                                    ),
                                    Text('Email', style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ],
                             ),

                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),


                         ),
                       ),
                             SizedBox(
                               height: 10,
                             ),
                             TextFormField(
                               controller: _pswd,
                               validator: (value){
                                 if(value!.isEmpty)
                                   return "Please Enter Password";
                                 else if(value.length<4)
                                   return "Length should be greater than 4";
                                 else return null;
                               },
                               obscureText: true,
                               decoration: InputDecoration(
                                 label: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Icon(
                                       Icons.lock_outline_rounded,
                                       color: Colors.black,),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     Text('Password', style: TextStyle(fontSize: 25, color: Colors.black),),
                                   ],
                                 ),

                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),


                               ),
                             ),


                           ],
                         ),
                       ),
                       Row(
                         children: [
                           Checkbox(
                             side: BorderSide(color: Colors.green),
                             checkColor: Colors.black,
                             activeColor: Colors.yellow,
                             value: tracker,
                             onChanged: (value){

                             setState(() {
                               tracker = !tracker;

                             });
                           },),
                           Text('Remember me', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.green[600])),
                         ],
                       ),
                       GestureDetector(
                         onTap: (){
                           if(_key.currentState!.validate()) {
                             login();
                           }
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                           moveToHome(context);
                         },
                         child: MyContainer(
                             child: Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ),),
                             height: 50,
                             width:double.maxFinite,
                             clr: Colors.green.shade100,
                             rds: 40
                         ),
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       GestureDetector(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                         },
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Don't have Account?", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)),
                             SizedBox(
                               width: 15,
                             ),
                             Text('SignUp', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green[800]),),
                           ],
                         ),
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             height: 1,
                             width: 100,
                             color: Colors.grey.shade400,
                           ),
                           Text('  OR  ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.grey.shade400),),
                           Container(
                             height: 1,
                             width: 100,
                             color: Colors.grey.shade400,
                           ),
                         ],
                       ),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           // ClipRRect(
                           //   borderRadius: BorderRadius.circular(5),
                           //   child: Container(
                           //     height: 40,
                           //     width: 50,
                           //     color: Colors.transparent,
                           //     child: Icon(Icons.facebook, color: Colors.blue.shade800, size: 45,),
                           //   ),
                           // ),
                           // SizedBox(
                           //   width: 20,
                           // ),
                           CircleAvatar(
                               radius: 35,
                               backgroundColor: Colors.transparent,
                               child: IconButton(
                                 onPressed: () async {
                                   final user = await AuthService().signInWithGoogle();
                                   if (user != null) {
                                     // Navigate based on role or to dashboard
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                                   } else {
                                     ScaffoldMessenger.of(context).showSnackBar(
                                       SnackBar(content: Text('Google Sign-In failed')),
                                     );
                                   }
                                 },
                                 icon:  Image.asset('assets/images/google.png', height: 40,),
                               )
                           ),
                           SizedBox(
                             width: 40,
                           ),
                           ClipRRect(
                             borderRadius: BorderRadius.circular(5),
                             child: Container(
                               height: 40,
                               width: 50,
                               color: Colors.transparent,
                               child: Icon(Icons.phone, color: Colors.blue, size: 42,),
                             ),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
               Spacer(),
             ],
           ),
         ),
     );
  }
}
