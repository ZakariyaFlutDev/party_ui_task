import 'package:flutter/material.dart';
import 'package:party_ui_task/animation/fade_animation.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final bool _isLoging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/10,),

              Expanded(
                child: Column(
                  children: [
                    FadeAnimation(
                      1.2,
                      Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 40),),
                    ),
                    SizedBox(height: 20,),
                    FadeAnimation(
                        1.5,
                        Text("Let us find you a tutorial for your interest", style: TextStyle(color: Colors.green.shade400, fontSize: 25),)
                    ),
                  ],
                ),
              ),

              _isLoging ?
                  FadeAnimation(
                      2.2,
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.orange
                        ),
                        child: Center(
                          child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 20),),
                        ),
                      )
                  )
              :
                  FadeAnimation(
                      2.2,
                      Container(
                        height: 55,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.red
                                ),
                                child: Center(
                                  child: Text("Google", style: TextStyle(color: Colors.white, fontSize: 20),),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.blue
                                ),
                                child: Center(
                                  child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 20),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
