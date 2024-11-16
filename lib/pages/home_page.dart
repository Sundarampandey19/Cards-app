import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Samosa Bank",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            child: Row(
              children: [
                cardWidget(),
                cardWidget(),
                cardWidget(),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                ElevatedButton(
                  onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                      minimumSize: const Size(120, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                ),
                         // Adjusted size
                child: const Row(     
                  children: [
                    Icon(Icons.send),
                    Text("Transfer" )
                    ],
                )
                ),
                ElevatedButton(onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 50),
                    backgroundColor: Colors.green[300 ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Icon(Icons.mail),
                    SizedBox(width: 8), 
                    Text("Receive" )
                    ],
                )
                ),  


            ],
          ),
          // Recent transactions row

          //Make a column for that

          //Bottom navigation bar
        ],
      ),
    );
  }

  Padding cardWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200,
        width: 350,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border.fromBorderSide(BorderSide()),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: const Padding(
          padding:  EdgeInsets.all(20.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$2000",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "VISA",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                   ),
                   
              Row(
                children: [
                  Text("4335 **** **** ****", 
                  style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                  )
                ],
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          
                  Text("Debit Card",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white), ),
                  Text("09/24" ,style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),)
          
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
