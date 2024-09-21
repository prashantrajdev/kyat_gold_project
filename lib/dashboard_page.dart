// ignore_for_file: unused_element


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DashboardPage extends StatefulWidget{
  const DashboardPage({super.key});

  @override
  State<StatefulWidget> createState() {
   return dashboardpagestate();
  }
  
}

// ignore: camel_case_types
class dashboardpagestate extends State<DashboardPage>{
  String menu="First menu";
  bool? allGroupValue=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              color: const Color.fromARGB(255, 166, 206, 227),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("KYAT",style:TextStyle(fontSize: 50,color: Colors.green,fontWeight: FontWeight.bold ),),
              ),
            ),
             Expanded(
               child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child:Container(
                      color: Color.fromARGB(255, 166, 206, 227),
                      child: _creatmenu(),
                      

                     
                    ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.grey,
                        child: displayDetailScreen(),
                      ),
                      ),
                ],
               
                           ),
             )
          ],),),
      
    );
  }
  Widget _creatmenu (){
    return  Column(
      children: [
        
        Padding(
          padding: const EdgeInsets.only(right: 180),
          child: _menuitem("Main Menu",(){
            setState(() {
              menu="First Menu";
            });
           
          
          },style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: _menuitem("GROUP",(){
              setState(() {
                menu="Second Menu";
            });
            
          
          },style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
        ), 
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("Add New Group",(){
              setState(() {
                menu="Third Menu";
            });
          
          },style: menu=="Third Menu"?const TextStyle(fontWeight: FontWeight.bold,color: Colors.white): const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("View All Group",(){
              setState(() {
                menu="Fourth Menu";
            });
          
          },style:menu=="Fourth Menu"?const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight:FontWeight.bold ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 105),
          child: _menuitem("Group Enrollment",(){
              setState(() {
                menu="Fifth Menu";
            });
            
          },style:menu=="Fifth Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 180),
          child: _menuitem("Shopping",(){
            setState(() {
              menu="Sixth Menu";
            });
          },style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold) ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 170),
          child: _menuitem("Orders",(){
            setState(() {
              menu="Seven Menu";
            });
          },style:menu=="Seven Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold) ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("Category Type",(){
            setState(() {
              menu="Eight Menu";
            });
          },style:menu=="Eight Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold),
           ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("Product Tags",(){
            setState(() {
              menu="Nine Menu";
            });
          },style:menu=="Nine Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold) ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("Coupon Code",(){
            setState(() {
              menu="Ten Menu";
            });
          },style:menu=="Ten Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold) ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 145),
          child: _menuitem("Category",(){
            setState(() {
              menu="Eleven Menu";
            });
          },style:menu=="Eleven Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold),
           ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("Add Product",(){
            setState(() {
              menu="Twelve Menu";
            });
          },style:menu=="Twelve Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold),
           ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: _menuitem("View Product",(){
            setState(() {
              menu="Thirteen Menu";
            });
          },style:menu=="Thirteen Menu"? const TextStyle(fontWeight: FontWeight.bold,color: Colors.white):const TextStyle(fontWeight: FontWeight.bold),
           ),
        ),
      ],
      
    );
    
  }
  Widget _menuitem (String title ,Function() onClicked,{TextStyle style= const TextStyle(fontSize: 20,color: Colors.black,)}){
    return InkWell(
      onTap: () {
        onClicked();
      },
      child:  Padding(
        padding:  const EdgeInsets.all(10),
        child:  Text(
          title,
          style: style
      ),
    ));
  }
  
  Widget  displayDetailScreen() {
   if(menu=="Third Menu"){
    return  Center(
      child:Container(color: Color.fromARGB(255, 197, 215, 225),
        width: double.infinity,
        height: double.infinity,
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text("Add New Group",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        const SizedBox(height: 70,),
        Row(
          children: [
            Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Group Name"),
              ),
              Container(
                height: 30,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      fillColor: Colors.white,filled:true, 
                    ),
                  ),
                ),

              )
            ], 
            ),),
              Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Group Start Date"),
                          Container(
                            height: 30,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,hintText: '2024/09/17'),textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                    ),
                      Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Group End Date"),
                          Container(
                            height: 30,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,hintText: '2024/09/17'),textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                    ),
                    




          ],
          
        ),
        const SizedBox(height: 70,),
         Row(
          children: [
            Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Duration"),
              ),
              Container(
                height: 30,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,hintText: 'Duration in Months'
                    ),textAlign: TextAlign.end,
                  ),
                ),

              )
            ], 
            ),),
              Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Total Participants"),
                          Container(
                            height: 30,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,),
                            ),
                          )
                        ],
                      ),
                    ),
                      Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Monthly Reccuring Amount"),
                          Container(
                            height: 30,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                            ),
                          )
                        ],
                      ),
                    ),
                    




          ],
          
        ),
        const SizedBox(height: 70,),
        Row(
          children: [
            Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Banner"),
              ),
              Container(
                height: 30,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,
                    ),
                  ),
                ),

              )
            ], 
            ),),
              Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Winner Announcement Date"),
                          Container(
                            height: 30,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,hintText: '2024/09/17'),textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                    ),
                      Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Featured Group"),
                          Container(
                            height: 30,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                            ),
                          )
                        ],
                      ),
                    ),
                    




          ],
          
        ),
        const SizedBox(height: 70,),
        Row(
          children: [
            Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Description"),
              ),
              Container(
                height: 80,
                width: 1040,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,
                    ),
                  ),
                ),

              ),
            ], 
            ),),
          ],
        ),
          
        ],
        
      ),

       ),);
  }
   else if(menu=="Fourth Menu"){
    return  Center(
      child:Container(color: Color.fromARGB(255, 197, 215, 225),
      width: double.infinity,
      height: double.infinity,
       child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Padding(
             padding: EdgeInsets.all(20),
             child: Text("View All Groups",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
           ),
           Row(
            children: [
              Checkbox(value: allGroupValue, onChanged: (value){
                setState((){
                    allGroupValue=value;
                });
                   
              }),

              const Expanded(
              
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("All Groups"),
                  ],
                )
                ),
                Checkbox(value: allGroupValue, onChanged: (value){
                setState((){
                    allGroupValue=value;
                });
                   
              }),

              const Expanded(
              
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("On Boarding"),
                  ],
                )
                ),
                Checkbox(value: allGroupValue, onChanged: (value){
                setState((){
                    allGroupValue=value;
                });
                   
              }),

              const Expanded(
              
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Running"),
                  ],
                )
                ),
                Checkbox(value: allGroupValue, onChanged: (value){
                setState((){
                    allGroupValue=value;
                });
                   
              }),

              const Expanded(
              
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Completed"),
                  ],
                )
                ),

            ],


           ),
           const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Group ID"),
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: Text("Group Name"),
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: Text("Group Start date"),
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: Text("Group End date"),
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: Text("Status"),
              ),
              Padding(
                padding: EdgeInsets.all(80),
                child: Text("Details"),
              ),
            ],

           ),

          ],

          ),
      ),);
  }
   else  if( menu=="Fifth Menu"){
    return  Center(
      child:Container(color: const Color.fromARGB(255, 197, 215, 225),
      width: double.infinity,
      height: double.infinity,
      child:const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("View Group Enrollment Request",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Group Id",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Group Name",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("User Name",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Token Quality",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Accept",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Reject",style: TextStyle(fontWeight: FontWeight.bold),),
                )

              ],

            )

          ],
          
    
    ),

      
   ),);
  }
  else if ( menu=="Seven Menu"){
  return Center(
    child: Container(color: const Color.fromARGB(255,197,215,255),
    width: double.infinity,
    height: double.infinity,
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(25),
          child: Text("Orders",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Text("Order Date",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("View Product",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("Quantity",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("Address",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("Order Id",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("Transaction Id",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],

        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Container(color: Colors.white,
             width: double.infinity,
             height: 480,
             child:  const SingleChildScrollView(
               child:  Column(
                children: [
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  SizedBox(height: 50,
                    child: Row(
                      
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: 10),
                           child: Text("Order Date"),
                         ),
                         Spacer(),
                        
                         Text("View Product"),
                         Spacer(),
                        Text("Phone Number"),
                        Spacer(),
                        Text("Quantity"),
                        Spacer(),
                       Text("Address"),
                       Spacer(),
                        Text("Order Id"),
                        Spacer(),

                         Text("Transaction ID"),
                         Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,
                    child: Divider(color: Colors.black,
                    
                    ),
                  ),
                  
                  
                  
                  
                ],
               ),
             ),
          
          ),
        )

      ],
    ),
    ),
  );

  }
  else if (menu=="Eight Menu"){
  return Center(
    child: Container(color: const Color.fromARGB(255, 197, 215, 255),
      width: double.infinity,
      height: double.infinity,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text("Category Type",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,),
            child: Text("Add Category Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
        
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Category Type Name"),

                const SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                  
                ],
              
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Category Type Identifier"),

                const SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                  
                ],
              
              ),
              ),
            ),
            
            const SizedBox(width: 35,),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: Container(
                height: 45,
                width: 300,
                child: const Center(child: Text("Add Category Type",style:TextStyle(fontWeight: FontWeight.bold),),),
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey),
              ),
            ),
            
             
          ],
        ),
        const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Category Type List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                )
              ],
            ),
            const Row(
              children: [
                
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text("Category Type Id",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                ),
                Spacer(),
                Text("Category Type Identifier",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                Spacer(),
                Text("Category Type Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                Spacer(),
                Text("Created At",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                Spacer(),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 35,
                    width: 1100,
                    child:TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                ),
                
              ],
              
            ),
        ],
      ),
    ),
  );

  }

  
  

  
   else if( menu=="Nine Menu"){
  return Center(
    child: Container(color: const Color.fromARGB(255, 197, 215, 225),
      width: double.infinity,
      height: double.infinity,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Product Tags",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Add Product Tags",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
          Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Product Tag Name"),

                const SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                  
                ],
              
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Product Tag Description"),

                const SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: 650,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                  
                  
                ],
              
              ),
              ),
            ),
            
            
           
            
             
          ],
          
        ),
        Column(
              children: [
                Container(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    child:const Text("Add Product Tags",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: () {
                      debugPrint("Button Clicked");
                    

                    
                    },),
                  
                ),
              ],
            ),
             const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Product Tag List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                )
              ],
            ),
            const Row(
              children: [
                
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text("Product Tag Id",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                ),
                Spacer(),
                Text("Product Tag Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                Spacer(),
                Text("Product Tag Description",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                Spacer(),
                Text("Created At",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                Spacer(),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 35,
                    width: 1100,
                    child:TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                ),
                
              ],
              
            ),
        ],
       
      ),
      
    ),
  );

  }
  else if(menu=="Ten Menu"){
  return Center(
    child:Container(color: const Color.fromARGB(255, 197, 215, 255),
    height: double.infinity,
    width: double.infinity,
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Coupun Codes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),

           const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text("Add Coupun Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
          Row(
          children: [
            Padding(
              padding:  const EdgeInsets.all(40),
              child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("Coupun Code"),

                 const SizedBox(height: 15,),
                  SizedBox(
                    height: 35,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                  
                ],
              
              ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.all(40),
              child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("Coupun Description"),

                 const SizedBox(height: 15,),
                  SizedBox(
                    height: 35,
                    width: 650,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                    ),
                  ),
                  ],
              
              ),
              ),
            ),
           
          ], 
          ),
          const SizedBox(height: 5,),
         Row(
          children: [
            Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text("Minimum Order Value"),
              ),
              Container(
                height: 30,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,
                    ),
                  ),
                ),

              )
            ], 
            ),),
              Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text("Set Cupon Discount Type"),
                          ),
                          Container(
                            height: 30,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,hintText: 'Select Coupan Type'),textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                      Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Discount Value"),
                          Container(
                            height: 30,
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true),
                            ),
                          )
                        ],
                      ),
                    ),
                    




          ],
          
        ),
         const SizedBox(height: 5,),
         Row(
          children: [
            Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Coupun Expiry Date"),
                ),
               
              
              Container(
                height: 30,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),fillColor: Colors.white,filled: true,hintText:"2024/09/20", 
                    ),textAlign: TextAlign.center,
                  ),
                ),
              

              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 880),
                child: Container(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                      child:const Text("Add Product Tags",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: () {
                        debugPrint("Button Clicked");
                      
                
                      
                      },),
                    
                  ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Coupan Code List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              const Row(
                children: [
                  Spacer(),
                  Text("Cupon Id",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Cupon Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Cupon Code Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Cupon Code Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Cupon Code Discount",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Cupon Code Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Minimum Order Value",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                  Text("Expiry Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),),
                  Spacer(),
                ],
              ),
            ], 
            ),),],),
           
              
      ],
      
    ),
    ),
    );

   
    
  }
  
  else{menu=="Thirteen Menu";
  return Center(
    child: Container(color: const Color.fromARGB(255, 197, 215, 255),
    width: double.infinity,
    height: double.infinity,
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: Text("View Products",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Product Id",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Product Name",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Product Type",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Product Price",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Product Quantity",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("Edit",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Text("View",style: TextStyle(fontWeight: FontWeight.bold),),
                )

              ],

            ),
      ],
    ),

    ),
  );

  }
  }
}        
           
            
             
          
          
        
        
        
      
  