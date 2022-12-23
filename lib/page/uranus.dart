import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee/constant/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class uranus extends StatefulWidget {
  
final String nname;

final double age_uranus1;

final double weight_uranus1;
   uranus({
     required this.nname ,
    
    required this.age_uranus1,
   
    required this.weight_uranus1,
   
   }) ;

  @override
  State<uranus> createState() => _uranusState();
}

class _uranusState extends State<uranus> {
  @override
  Widget build(BuildContext context) {
  return Container(
       decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/animation_uranus.gif', ),fit: BoxFit.cover)
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
                          // Text('',
                         
                          // style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                          // ) , 
                          //   Text('Your Weight in Jupiter is ${widget.weight_uranus1} Kg',
                          //   style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                          //   ),
                          const SizedBox(
                            height: 300,
                          ),
                          Text(
                           'Uranus (أورانوس "Oranos")',
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
                          "The seventh planet from the sun, Uranus is an oddball. It has clouds made of hydrogen sulfide, the same chemical that makes rotten eggs smell so foul. It rotates from east to west like Venus. But unlike Venus or any other planet, its equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers believe an object twice the size of Earth collided with Uranus roughly 4 billion years ago, causing Uranus to tilt. That tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years at a time. ",

                            
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: contentTextColor,
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
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(width:90),
                                
                                CircleAvatar(
                                  radius: 150, 
                                  backgroundImage: AssetImage(
                                    'assets/uranus1.png',
                                    
                                   // fit: BoxFit.cover,
                                  ),
                                  
                                ),
                                SizedBox(width: 140,),
                               CircleAvatar(
                                  radius: 150, 
                                  backgroundImage: AssetImage(
                                    'assets/uranus2.jpg',
                                    
                                   // fit: BoxFit.cover,
                                  ),
                                  
                                ),
                                SizedBox(width: 180,),
                               CircleAvatar(
                                  radius: 150, 
                                  backgroundImage: AssetImage(
                                    'assets/uranus3.jpg',
                                    
                                   // fit: BoxFit.cover,
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
                      child: InkWell (
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
                                          title: "Welcome To Uranus Astronaut ${widget.nname}",
                                          desc: 'Age: ${widget.age_uranus1} Uranian years\n'
                                                'Weight: ${widget.weight_uranus1} Kg',
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
                        child:
                         Image.asset('assets/uranus.png')))),
              Positioned(
                left: 32,
                top: 60,
                child: Text(
                  '7',
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