import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final List<String> dept=['FEST','DPharm', 'Law', 'BEMS', 'HIMS', 'HCMD'];
   HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/hulogo.png',height: 90,width: 90,),
                SizedBox(width:15),
                Text(
                  'Hamdard University\nComplain App',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top:10),
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Enter your faculty',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
              ),
            ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.all(30),
                        child: Text('HU Faculties',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                            itemCount: widget.dept.length,
                            itemBuilder: (context, index){
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Text(widget.dept[index]),
                            )
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
