import 'package:flutter/material.dart';
import 'package:flutter_application_9/widget/first_screen.dart';
import 'package:flutter_application_9/widget/second_screen.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routes: {
        '/FirstScreen' : (BuildContext context) => const FirstScreen('ok', title: 'Home Page'),
        '/SecondScreen' : (BuildContext context) => const SecondScreen('ok', title: 'Shorts Page'),
        },
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Youtube")),
        body: const Center(child: MyHomePage('ok' ,title: 'Home Page')),
      ),
    );
  }
}







// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/firstScreen' : (BuildContext context) => const Screen1(),
//         '/secondScreen' : (BuildContext context) => const Screen2(),
//         '/thirdScreen' : (BuildContext context) => const Screen3()
//       },
//       home: const Scaffold(
//         body: Center(child: Screen1())
//       ),
//     );
//   }
// }

// class Screen1 extends StatefulWidget{
//   const Screen1({super.key});


//   @override
//   State<Screen1> createState(){
//   return _Screen1State();
//   }
// }

// class Screen2 extends StatefulWidget{
//   const Screen2({super.key});


//   @override
//   State<Screen2> createState(){
//   return _Screen2State();
//   }
// }

// class Screen3 extends StatefulWidget{
//   const Screen3({super.key});


//   @override
//   State<Screen3> createState(){
//   return _Screen3State();
//   }
// }

// class _Screen1State extends State<Screen1>{

//   @override
//   Widget build(BuildContext context){
//     return Material(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Home Page"),
//         ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("Sceen-1"),
//             ElevatedButton(onPressed: (){
//               Navigator.pushNamed(context, '/secondScreen');
//             }, child: const Text("Go to Screen-2")),
//             ElevatedButton(onPressed: (){
//               Navigator.pushNamed(context, '/thirdScreen');
//             }, child: const Text("Go to Screen-3")),
//             Row(
//               children: <Widget>[
//                 Spacer(),
//                 ButtonTypesGroup(enabled: true),
//                 ButtonTypesGroup(enabled: false),
//                 Spacer(),
//               ],
//             ),
//           ],
//         )
//     );
//   }
// }

// class _Screen2State extends State<Screen2>{

//   @override
//   Widget build(BuildContext context){
//     return Material(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("Sceen-2"),
//             ElevatedButton(onPressed: (){
//               Navigator.pushNamed(context, '/thirdScreen');
//             },
//             child: const Text("Go to Screen-3")),
//             ElevatedButton(onPressed: (){
//               Navigator.pop(context);
//             }, 
//             child: const Text("Go Back")),
//           ],
//         ),
//       )
//     );
//   }
// }

// class _Screen3State extends State<Screen3>{

//   @override
//   Widget build(BuildContext context){
//     return Material(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("Sceen-3"),
//             ElevatedButton(onPressed: (){
//               Navigator.pop(context);
//             }, child: const Text("Go Back")),
//           ],
//         ),
//       )
//     );
//   }
// }
