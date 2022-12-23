import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee/constant/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class saturn extends StatefulWidget {
  
final String nname;

final double age_saturn1;

final double weight_saturn1;

   saturn({
      required this.nname ,
    
    required this.age_saturn1,
    
    required this.weight_saturn1,
    
    }) ;

  @override
  State<saturn> createState() => _saturnState();
}

class _saturnState extends State<saturn> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/saturn_animation.gif', ),fit: BoxFit.cover)
            ),
      child: Scaffold(  
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: Text('Mercury'),
        //   centerTitle: true,
        // ),    
        body: SafeArea(
          
          bottom: false,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text("To See Your Age & Weight Here, Click On Saturn",
                         
                          // style: TextStyle(
                          //   color: Colors.grey, 
                          //   fontSize: 15
                          // ),
                          // ) , 
                          //   Text('Your Weight in Saturn is ${widget.weight_saturn1} Kg',
                          //   style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                            // ),
                          const SizedBox(
                            height: 300,
                          ),
                          Text(
                           'Saturn (زحل "Zuhal")',
                            style: TextStyle(
                                fontSize: 56,
                                fontWeight: FontWeight.w900,
                                color: primaryTextColor,
                                fontFamily: 'Avenir'),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Solar System',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w300,
                                color: primaryTextColor,
                                fontFamily: 'Avenir'),
                            textAlign: TextAlign.left,
                          ),
                          const Divider(
                            color: Colors.black38,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
 "The sixth planet from the sun, Saturn is known most for its rings. When polymath Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts: a planet and two large moons on either side. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock and scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium and has numerous moons.",                            
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: 'Avenir'),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Divider(
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, bottom: 10),
                      child: Text(
                        'Gallery',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: contentTextColor,
                            fontFamily: 'Avenir'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: ListView.builder(
                          itemCount: 1
                          // widget.planetInfo.images.length,
                          ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                   decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),
              ),
                                  child: Image.asset(
                                    'assets/saturn1.jpg',
                                    
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                  child: Image.asset( 
                                    'assets/saturn2.jpg',                                  
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                  child: Image.asset(
                                    "assets/saturn3.jpg",
                                    
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: -64,
                  child: Hero(
                      tag: 1,
                      child: InkWell(
                         onTap: () {
                           var alertStyle = AlertStyle(
                                          overlayColor:
                                            ieee_color,
                                          animationType: AnimationType.grow,
                                          isCloseButton: false,
                                          isOverlayTapDismiss: false,
                                          descStyle: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          animationDuration:
                                              Duration(milliseconds: 1500),
                                          alertBorder: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            side: BorderSide(
                                              width: 2,
                                              color: Colors.black,
                                            ),
                                          ),
                                          titleStyle: TextStyle(
                                            color: Colors.blueAccent,
                                          ),
                                        );

                                        Alert(
                                           image:
                                               Image.asset("assets/astronaut.png"),
                                          context: context,
                                          style: alertStyle,
                                          type: AlertType.none,
                                          title: "Welcome To Saturn Astronaut ${widget.nname}",
                                          desc: 'Age: ${widget.age_saturn1} Saturnian years\n'
                                                'Weight: ${widget.weight_saturn1} Kg',
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                               "🧑‍🚀",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              color: Colors.transparent,
                                              // Color.fromARGB(255, 187, 137, 196),
                                              radius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ],
                                        ).show();
                        },
                        child: Image.asset('assets/saturn.png')))),
              Positioned(
                left: 32,
                top: 60,
                child: Text(
                  '6',
                  style: TextStyle(
                      fontSize: 247,
                      color: primaryTextColor.withOpacity(0.2),
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Avenir'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white24,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}