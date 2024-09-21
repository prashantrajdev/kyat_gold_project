import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_screen/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
    body: Column(
     mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
       Center(
         child: Container(
          height: 500,
          width: 500,
          child:   Card(
            color: Color.fromARGB(255, 197, 215, 255),
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60,),
                const Center(child: Text("Login To Continue Admin Pannel",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: Text("Enter Admin Id",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: Text("Enter Password",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                ),
                const SizedBox(height: 80,),
                Center(
                  child: ElevatedButton(onPressed: (){
                    debugPrint("Button Clicked");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const DashboardPage();
                  
                    }));
                  }, child: const Text("Click here to continue"),),
                ),
               
                
               
              ],
            ),
          ),
         ),
       )
      ],
    ),
    
    
      
      );
    
  }
}