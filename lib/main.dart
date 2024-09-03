import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // to hidden the debug banner let it false
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

// this is the build widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            "Title" // i will write title here
            ,
            style: TextStyle(
              backgroundColor: Color(0xFF00FF00), // to write hexa code color
              // you should start with 0xFF
            ), // detect style of text
          ),
          actions: [
            // to make ayn widget clickable i have function named InkWell , GestureDetector
            InkWell(
              onTap: () => print("click me"),
              child: const Text("clickable "),
            ),
            const Text("settings"), // to add text in appbar
            const Icon(Icons.settings), // to add icon near to text
            IconButton(
              onPressed: () {
                // write code dart
              },
              icon: const Icon(Icons.wifi),
            )
          ], // take list of widget
        ),
        body: Center(
            //* this widget is center all elements under his space that have
            child: Row(
          // this widget take list of widget and it let the widget next each other in row
          //* and  i have Column widget
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //# to control with position of items
          children: [
            //? list of widget
            InkWell(
              //? to add the counter when click on box put all container inside InkWell widget
              onTap: () => {
                setState(() {
                  //# setState it method that make rerender to the page when i click
                  //# on box the counter will increase but if i don't use setState then i can't see changes
                  _counter++;
                })
              },
              child: Container(
                  // in this widget i have all access to control in style of it
                  //color: Colors.green, //! will get error because you use decoration
                  decoration: BoxDecoration(
                      //! when you use decoration you can't use property outside of decoration style
                      //! EX: if you try to add color outside of decoration you will get error
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.circular(5)), // decor of container
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //# space between container and text in vertical and horizontal side
                  //? padding:const EdgeInsets.all(12.5), => in all side will affect with space

                  child: const Icon(Icons.add)),
            ),
            InkWell(
              //? to add the counter when click on box put all container inside InkWell widget
              onTap: () => {
                setState(() {
                  //# setState it method that make rerender to the page when i click
                  //# on box the counter will increase but if i don't use setState then i can't see changes
                  _counter++;
                })
              },
              child: Container(
                // in this widget i have all access to control in style of it
                //color: Colors.green, //! will get error because you use decoration
                decoration: BoxDecoration(
                    //! when you use decoration you can't use property outside of decoration style
                    //! EX: if you try to add color outside of decoration you will get error
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.circular(5)), // decor of container
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                //# space between container and text in vertical and horizontal side
                //? padding:const EdgeInsets.all(12.5), => in all side will affect with space

                child: Text(
                  "$_counter",
                  style: const TextStyle(
                    fontSize: 20, // size of text
                    color: Colors.black, // color of text
                    backgroundColor:
                        Colors.transparent, // background text just not all box
                  ),
                ), // to use variable inside widget use $ _Name of variable
              ),
            ),
            InkWell(
              //? to add the counter when click on box put all container inside InkWell widget
              onTap: () => {
                setState(() {
                  //# setState it method that make rerender to the page when i click
                  //# on box the counter will increase but if i don't use setState then i can't see changes
                  _counter--;
                })
              },
              child: Container(
                  // in this widget i have all access to control in style of it
                  //color: Colors.green, //! will get error because you use decoration
                  decoration: BoxDecoration(
                      //! when you use decoration you can't use property outside of decoration style
                      //! EX: if you try to add color outside of decoration you will get error
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.circular(5)), // decor of container
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //# space between container and text in vertical and horizontal side
                  //? padding:const EdgeInsets.all(12.5), => in all side will affect with space

                  child: const Icon(Icons.remove)),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ],
        )));
  }
}
