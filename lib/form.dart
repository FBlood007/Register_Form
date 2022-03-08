import 'package:form/third.dart';
import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  const Form1({Key? key}) : super(key: key);
  Widget verticalSpace({double? space}) => SizedBox(height: space ?? 10.0);
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form1> {

  bool pass = false;
  String error = '';
  String gender = '';
  String radio1 = 'Male';
  String radio2 = 'Female';
  String radio3 = 'Other';
  bool submit = false;

  String fName = '';
  String lName = '';
  String uName = '';
  String email = '';
  String mobile = '';

  bool box1 = false;
  bool box2 = false;
  bool box3 = false;
  bool box4 = false;
  bool box5 = false;
  bool box6 = false;

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController uNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      child:
                      Image.network('https://cms-assets.tutsplus.com/uploads/users/343/posts/23627/preview_image/tutsplus-icon.png',
                        fit:BoxFit.cover,

                      ),
                    ),
                  ),


                  SizedBox(height: 10.0),

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: fNameController,
                          style:const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            hintText: 'Enter First Name',
                            label:const Text('First Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:const BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:const BorderSide(
                                  color: Colors.black,
                                  width: 3,
                                )
                            ),
                            // filled: true,
                            // fillColor: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          controller: lNameController,
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            hintText: 'Enter Last Name',
                            label:const Text('Last Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:const BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:const BorderSide(
                                  color: Colors.black,
                                  width: 3,
                                )
                            ),
                            // filled: true,
                            // fillColor: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.0),

                  TextField(
                    controller: uNameController,
                    style:const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      hintText: 'Enter User Name',
                      label:const Text('User Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:const BorderSide(
                            color: Colors.black,
                            width: 3,
                          )
                      ),
                      // filled: true,
                      // fillColor: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 20.0),

                  TextFormField(
                    controller: emailController,
                    style:const TextStyle(fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (val){
                      key.currentState!.validate();
                    },
                    validator: (val){
                      return val!.isEmpty? 'Please Enter valid Email-id' :
                      null;
                    },
                    // onChanged: (val){
                    //   setState(() {
                    //   val.isEmpty? error="Please enter valid Email id":error='';
                    //   });
                    // },
                    decoration: InputDecoration(
                      prefixIcon:const Icon(Icons.email,color: Colors.black,),
                      hintText: 'Enter Email',
                      // errorText: error,
                      label:const Text('Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:const BorderSide(
                            color: Colors.blue,
                            width: 3
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:const BorderSide(
                            color: Colors.black,
                            width: 3,
                          )
                      ),
                      // errorBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   borderSide: const BorderSide(
                      //     color: Colors.red,
                      //     width :5,
                      //   ),
                      // ),
                      // filled: true,
                      // fillColor: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 10.0),

                  TextFormField(
                    style:const TextStyle(fontSize: 15),
                    keyboardType: TextInputType.phone,
                    onChanged: (val){
                      key.currentState!.validate();
                    },
                    validator: (val){
                      return val!.length <10 ? 'Mobile N0. should have 10 digits' : null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Mobile Number',
                      label:const Text('Mobile No.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:const BorderSide(
                            color: Colors.black,
                            width: 3,
                          )
                      ),
                      // filled: true,
                      // fillColor: Colors.grey,
                      prefixIcon:const Icon(Icons.phone_android,color: Colors.black,),
                    ),
                  ),

                  SizedBox(height: 10.0),

                  TextField(
                    controller: mobileController,
                    style:const TextStyle(fontSize: 15),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      label:const Text('Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:const BorderSide(
                            color: Colors.black,
                            width: 3,
                          )
                      ),
                      // filled: true,
                      // fillColor: Colors.grey,
                      suffixIcon: IconButton(
                        icon:  Icon(pass? Icons.visibility_off : Icons.visibility) ,
                        onPressed: (){
                          setState(() {
                            pass = !pass;
                          });
                        },
                      ),
                    ),
                    obscureText: pass,
                  ),

                  SizedBox(height: 10.0),

                  Row(
                    children: [

                      const Text('Select Gender :',style: TextStyle(fontSize:17,color: Colors.red),),
                      Row(
                        children: [
                          Radio(
                            value: radio1,
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val.toString();
                              });
                            },
                          ),
                          const Text('Male'),
                          Radio(
                            value: radio2,
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val.toString();
                              });
                            },
                          ),
                          const Text('Female'),
                          Radio(
                            value: radio3,
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val.toString();
                              });
                            },
                          ),
                          const Text('Other'),
                        ],
                      ),

                    ],
                  ),

                  Container(

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const Text(
                          'Hobby :',
                          style:TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: box1,
                                  onChanged: (val) {
                                    setState(() {
                                      box1 = val!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box1 = !box1;
                                    });
                                  },
                                  child:const Text(
                                      'Reading'
                                  ),
                                ),
                                Checkbox(
                                  value: box2,
                                  onChanged: (val) {
                                    setState(() {
                                      box2 = val!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box2 = !box2;
                                    });
                                  },
                                  child: const Text(
                                    'Chess',
                                  ),
                                ),
                                Checkbox(
                                  value: box3,
                                  onChanged: (val) {
                                    setState(() {
                                      box3 = val!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box3 = !box3;
                                    });
                                  },
                                  child:const Text(
                                    'Cricket',
                                  ),
                                ),
                              ],
                            ),
                            Row(

                              children: [
                                Checkbox(
                                  value: box4,
                                  onChanged: (val) {
                                    setState(() {
                                      box4 = val!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box4 = !box4;
                                    });
                                  },
                                  child:const Text(
                                      'Travelling'
                                  ),
                                ),
                                Checkbox(
                                  value: box5,
                                  onChanged: (val) {
                                    setState(() {
                                      box5 = val!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box5 = !box5;
                                    });
                                  },
                                  child: const Text(
                                    'Singing',
                                  ),
                                ),
                                Checkbox(
                                  value: box6,
                                  onChanged: (val) {
                                    setState(() {
                                      box6 = val!;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box6 = !box6;
                                    });
                                  },
                                  child:const Text(
                                    'Cooking',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                  Container(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: (){
                        key.currentState!.validate();
                        setState(() {
                          fName = fNameController.text;
                          lName = lNameController.text;
                          uName = uNameController.text;
                          email = emailController.text;
                          mobile = mobileController.text;
                        });
                        if(key.currentState!.validate())
                          Navigator.pushNamed(
                              context,
                              'third',
                              arguments: {
                                'uName' : uNameController.text,
                                'email' : emailController.text,
                                'mobile' : mobileController.text,

                              }
                          );

                      },
                      elevation: 20.0,
                      child:const Text(
                          'Submit'),
                    ),
                  ),
                  Container(
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(fName,style: TextSty(),),
                          Text(lName,style: TextSty(),),
                          Text(uName,style: TextSty(),),
                          Text(email,style: TextSty(),),
                          Text(mobile,style: TextSty(),),
                        ],
                      )

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
TextStyle TextSty(){
  return (
      TextStyle(fontSize: 20,color: Colors.black)
  );
}
