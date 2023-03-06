import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: homescreen(),debugShowCheckedModeBanner:false,));
}
class homescreen extends StatelessWidget{
  List names1=[
    "Account",
    "Passbook",
    "Search"
  ];
  List<Color>colorss=[
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<Icon>icon1=[
    Icon(FontAwesomeIcons.penToSquare,color: Colors.blue[900],size: 20,),
    Icon(FontAwesomeIcons.bookOpen,color: Colors.blue[900],size: 20,),
    Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.blue[900],size: 20,)
  ];

   List names2=[
    "Add User",
    "Own Account",
    "Third Party"
  ];
  List<Color>colors2=[
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<Icon>icon2=[
    Icon(Icons.add,color: Colors.blue[900],size: 20,),
    Icon(Icons.switch_access_shortcut_sharp,color: Colors.blue[900],size: 20,),
    Icon(FontAwesomeIcons.paperPlane,color: Colors.blue[900],size: 20,)
  ];
  List names3=[
    "Contact",
    "Notes",
    "Connection",
    "Files"
  ];
  List<Color>colors3=[
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<Icon>icon3=[
    Icon(FontAwesomeIcons.phone,color: Colors.blue[900],size: 20,),
    Icon(FontAwesomeIcons.bookAtlas,color: Colors.blue[900],size: 20,),
    Icon(FontAwesomeIcons.connectdevelop,color: Colors.blue[900],size: 20,),
     Icon(FontAwesomeIcons.file,color: Colors.blue[900],size: 20,)
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children:[ 
                  Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  decoration: const BoxDecoration(
                   image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1621947081720-86970823b77a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ymx1ZSUyMCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80",
                   ),fit: BoxFit.cover),
                   ),
                  child: Container(
                   padding: const EdgeInsets.all(15.0),
                   alignment: Alignment.topLeft,
                   child: Column(
                   children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text(
                  'Hello,\n\n Account No: 100000708001\n Balance: 5000\n\n',
                  style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                Container(
                 height: 40,
                 width: 40,
                 decoration: const BoxDecoration(
                 image: DecorationImage(
                 image: AssetImage(
                  "assets/images/download.png"),
                 fit: BoxFit.cover,
                 ),
                  shape: BoxShape.circle,
                 ),
                 )
                 ],),
                const Padding(
                 padding: EdgeInsets.fromLTRB(4, 140,207, 10),
                 child: Text("CAMEROON PAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20 ),),
                 )
                 ],
                ), ),
                 ),
                const Positioned(child: Icon(Icons.account_balance),height: 50,)
                 ]), ],
          ),
          Padding(padding: const EdgeInsets.only(top:15,left:15,right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Banking",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),]),
                const SizedBox(height:16),
                Column(
                  children:[
          
                
                GridView.builder(shrinkWrap: true,
                itemCount: names1.length,
                physics: const NeverScrollableScrollPhysics(),
                
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  childAspectRatio: 1.1),
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 60,width: 60,
                          decoration: BoxDecoration(color: colorss[index], 
                          boxShadow: const [
                          BoxShadow(
                           blurRadius: 8,blurStyle: BlurStyle.outer
                           ),
      
                              ],
                          shape: BoxShape.circle),
                          child: Center(child:icon1[index] ,),
                        ),
                        const SizedBox(height: 10,),
                        Text(names1[index],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)
                      ],
                    );
                  })]),
               Row(mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Text("Transfer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),]),
                const SizedBox(height: 16),
                Column(
                  children:[
          
                
                GridView.builder(shrinkWrap: true,
                itemCount: names2.length,
                physics: const NeverScrollableScrollPhysics(),
                
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  childAspectRatio: 1.1),
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 60,width: 60,
                          decoration: BoxDecoration(color: colors2[index],
                           boxShadow: const [
                           BoxShadow(
                           blurRadius: 8,blurStyle: BlurStyle.outer
                           ) ],
                          shape: BoxShape.circle),
                          child: Center(child:icon2[index] ,),
                        ),
                        const SizedBox(height: 10,),
                        Text(names2[index],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)
                      ],
                    );
                  })]),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text("Utility Payments",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),]),
                const SizedBox(height: 16,),
                Column(
                  children:[
                GridView.builder(shrinkWrap: true,
                itemCount: names3.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                  childAspectRatio: 1.1),
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 60,width: 60,
                          decoration: BoxDecoration(color: colors3[index],
                           boxShadow: const [
                          BoxShadow(
                           blurRadius: 8,blurStyle: BlurStyle.outer
                           ), ],
                          shape: BoxShape.circle),
                          child: Center(child:icon3[index] ,),
                        ),
                        const SizedBox(height: 2),
                        Text(names3[index],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)
                      ],
                    );
                  })]),  
                 ],
            ),
          ),)
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(iconSize: 32,
        showSelectedLabels: true,
        selectedItemColor: const Color.fromARGB(115, 18, 42, 222),
        currentIndex: 1,
        selectedFontSize: 18,
        unselectedItemColor: const Color.fromARGB(224, 16, 1, 1),
        items: const [
        BottomNavigationBarItem(icon:Icon(Icons.settings,),label: "Settings"),
        BottomNavigationBarItem(icon:Icon(Icons.now_widgets_outlined,),label: "Home"),
        BottomNavigationBarItem(icon:Icon(Icons.logout,),label: "Logout"),
        
      ]),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child:   Icon(Icons.keyboard_voice_sharp,color: Colors.white,),
      backgroundColor:  const Color.fromARGB(115, 18, 42, 222),),
    );
  }

}