
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'controllers/NavigationController.dart';
import 'bottomNavigation.dart';

class SecondPage extends StatefulWidget {
  const  SecondPage({super.key});

  @override
  State <SecondPage> createState()=> _SecondPageState();

}
class _SecondPageState extends State<SecondPage>{
  @override
    Widget build(BuildContext context) {
      final controller =Get.put(NavigationController());

      //ayageabwum
    return Scaffold(
      resizeToAvoidBottomInset: false,
  
        bottomNavigationBar: CustomNavigationBar(controller: controller),
      appBar: AppBar(
        title: Text('Second kage'),
        backgroundColor: Color.fromRGBO(225, 95, 27, 3),
      ),


      endDrawer: Drawer(
        
        child: Container(
          width: double.infinity,
          color: Color.fromRGBO(206, 122, 48, 0.988),
          child: Column(
                children:[
                  
         SizedBox(height: 50,
         ),
                Infocard(name: "abubeker", profession: "foot baller",
                ),
                
                ListTile(
                  leading: SizedBox(
                    height: 34,
                    width:34
                  ),
                  
                ),
                Image.asset('assets/BABU.png', // Replace with your actual image path
                        // Optional properties
                        width: 200.0, // Adjust as needed
                        height: 150.0, // Adjust as needed
                        fit: BoxFit.cover, // Controls how the image resizes within its container
                      ),
              
           ]
                
          )
      ),
    
      ),
    
      
    
      body:Obx(() =>controller.Screens[controller.selectedIndex.value]),
    
          
    
          

          
        
      
  );
  }

}

class Infocard extends StatelessWidget{
  final String name,profession;
  const Infocard({
    Key ? key,
    required this.name,
    required this.profession,
  }):super(key:key);
 
@override
Widget build( BuildContext context){
  return  
  ListTile(

                    leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Icon(
                      CupertinoIcons.person,
                      color: Colors.black,
                    ),
                    ),
                    title: Text(
                    name,
                      style: TextStyle(color:Colors.white)),
                      subtitle: Text(
                        profession,
                        style: TextStyle(color: Colors.white),
                      ),

                    );
                    

            
          
}

}