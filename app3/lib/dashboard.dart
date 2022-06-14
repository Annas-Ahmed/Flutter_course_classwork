// import 'package:flutter/material.dart';

// class Dashboard extends StatelessWidget {
//   const Dashboard({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Image.asset('/images/car1.jpg'),
//           ListTile(
//             leading: CircleAvatar(backgroundImage: AssetImage("/images/car1.jpg"),),
//           ),
//           ElevatedButton(onPressed: (){
//             Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
//           }, child: child)
//         ],
//       ),

//     );
//   }
// }

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int a = 10;

  decrementCounter() {
    setState(() {});
    a--;
  }

  incrementCounter() {
    setState(() {});
    a++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("$a"),
      ElevatedButton(
          onPressed: () {
            decrementCounter();
          },
          child: const Text("decrement")),
      ElevatedButton(
          onPressed: () {
            incrementCounter();
          },
          child: const Text("increment"))
    ])));
  }
}
