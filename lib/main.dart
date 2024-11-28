import 'package:flutter/material.dart';
// import 'package:myapp/week_02/13_modal_bottom_sheet/modalbottomsheet.dart';
import 'package:myapp/week_02/14_form_validation/formvalidation.dart';
// import 'package:myapp/week_02/12_dropdown/dropdown.dart';
// import 'package:myapp/week_02/11_card/card.dart';
// import 'package:myapp/week_02/10_alert_dialouge/alert.dart';
// import 'package:myapp/week_02/09_switch_btn/switch.dart';
// import 'package:myapp/week_02/08_check_box/checkbox.dart';
// import 'package:myapp/week_02/04_drawer/drawer.dart';
// import 'package:myapp/week_02/05_tabbar/tabbar.dart';
// import 'package:myapp/week_02/06_pop_up_menu/popupmenu.dart';
// import 'package:myapp/week_02/07_radio_btn/radiobtn.dart';
// import 'package:myapp/week_02/01_routes/page1.dart';
// import 'package:myapp/week_02/01_routes/page2.dart';
// import 'package:myapp/week_02/01_routes/page3.dart';
// import 'package:myapp/week_02/02_snackbar_and_toast/snacktoast.dart';
// import 'package:myapp/week_02/03.1_persistent_navbar/persistentnav.dart';
// import 'package:myapp/week_02/03_bottom_navigationbar/navigation.dart';
// import 'package:myapp/5/gridview.dart';
//import 'package:myapp/week_01/5/pageview.dart';
// import 'package:myapp/5/listview.dart';
// import 'package:myapp/1/rowanddcolumn.dart';
// import 'package:myapp/2/expanded_and_flexible.dart';
// import 'package:myapp/3/stack_and_position.dart';
// import 'package:myapp/4/login_page_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter bootcamp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormValid() ,
      //onGenerateRoute: OnGenerateRoutes.route ,
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => Routes(),
      //   "page1": (context) => Page1(),
      //   "page2": (context) => Page2(),
      //   "page3": (context) => Page3(),
      // },
    );
  }
}

//ROUTES.....

// class OnGenerateRoutes{
//  static Route<dynamic>? route(RouteSettings settings){
//       switch(settings.name){
//         case"page1":{
//           return MaterialPageRoute(builder: (context) => Page1(),);
//         }
//         case"page2":{
//           return MaterialPageRoute(builder: (context) => Page2(),);
//         }
//         case"page3":{
//           return MaterialPageRoute(builder: (context) => Page3(),);
//         }
//       }
//  }
// }

// class Routes extends StatefulWidget {
//   const Routes({super.key});

//   @override
//   State<Routes> createState() => _RoutesState();
// }

// class _RoutesState extends State<Routes> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //leading: GestureDetector(child: Icon(Icons.arrow_back)),
//         backgroundColor: Colors.blue,
//         title: const Text("Routes..."),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//             onPressed: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => const Page3()));

//               Navigator.pushNamed(context, "page1");
              
//             },
//             child: const Text("View Page 1")),
//             SizedBox(height: 10,),
//             ElevatedButton(
//             onPressed: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => const Page3()));

              
//               Navigator.pushNamed(context, "page2");
//             },
//             child: const Text("View Page 2")),
//             SizedBox(height: 10,),
//             ElevatedButton(
//             onPressed: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => const Page3()));

              
//               Navigator.pushNamed(context, "page3");
//             },
//             child: const Text("View Page 3")),
//           ],
//         )
//       ),
//     );
//   }
// }

//End of Routes