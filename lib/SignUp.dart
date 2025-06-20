import 'package:farm_connect/Login.dart';
import 'package:farm_connect/Pages/Home.dart';
import 'package:farm_connect/Widgets/MyContainer.dart';
import 'package:farm_connect/services/auth_service.dart';
import 'package:flutter/material.dart';




class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool tracker= false;

  final GlobalKey<FormState> _key = GlobalKey <FormState> ();

  void moveToHome(BuildContext context){
    if(_key.currentState!.validate()){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }
  }

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pswd = TextEditingController();
  TextEditingController _cpswd = TextEditingController();
  TextEditingController _role = TextEditingController();
  final authservice = AuthService();

  void signUp()async{
    try{
      final user = await authservice.signUp(_email.text, _pswd.text);
      if(user!= null){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
      }
    }catch(e){
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,

      body:Container(
        child:  Expanded(
          child: Column(
            children: [
              // Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child:Column(
                  children: [
                    // Image.asset("assets/images/mrkt2.jpg",),
                    // SizedBox(
                    //   height:10,
                    // ),
                    Text('Welcome ', style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 35),),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _key,
                      child: Column(
                        children: [
                          // TextFormField(
                          //   controller: _name,
                          //   validator: (value){
                          //     if(value!.isEmpty)
                          //       return "Please Enter Full Name";
                          //     else return null;
                          //   },
                          //   decoration: InputDecoration(
                          //     label: Row(
                          //       mainAxisAlignment: MainAxisAlignment.start,
                          //       children: [
                          //         Icon(
                          //           Icons.person,
                          //           color: Colors.black,),
                          //         SizedBox(
                          //           width: 20,
                          //         ),
                          //         Text(' Username', style: TextStyle(fontSize: 25, color: Colors.black),),
                          //       ],
                          //     ),
                          //
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
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
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _cpswd,
                            validator: (value){
                              if(value!.isEmpty)
                                return "Please Enter Password";
                              else if(value.toString()==_pswd)
                                return "Please Enter the Same Password as Above";
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
                                  Text('Confirm Password', style: TextStyle(fontSize: 25, color: Colors.black),),
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
                            controller: _role,
                            validator: (value){
                              if(value!.isEmpty)
                                return "Please select one";
                              // else if(value.toString()!=("Farmer"||"farmer"||"Customer"||"customer"))
                                // return "Please select one from Farmer and Customer";
                              else return null;
                            },
                            decoration: InputDecoration(
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.black,),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(' Role (Farmer or Customer)', style: TextStyle(fontSize: 20, color: Colors.black),),
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
                        Text('Remember me', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: Colors.green)),
                      ],
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: (){
                        if(_key.currentState!.validate()) {
                          signUp();
                        }
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        moveToHome(context);
                      },
                      child: MyContainer(
                          child: Text('SignUp', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),
                          height: 60,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account.", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green[600]),),
                          ],
                        ),
                    ),
                    SizedBox(height: 10,),
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
                    // SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(5),
                        //   child: Container(
                        //     height: 40,
                        //     width: 50,
                        //     color: Colors.transparent,
                        //     child: Icon(Icons.facebook, color: Colors.blue.shade800, size: 40,),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        CircleAvatar(
                            radius: 40,
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
                              icon:  Image.asset('assets/images/google.png', height: 50,),
                            )
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.transparent,
                            child: Icon(Icons.phone, color: Colors.blue, size: 50,),
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
      ),
    );
  }
}
