import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee/constant/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class jupiter extends StatefulWidget {
final double weight_jupiter1;
  
final String nname;

final double age_jupiter1;

   jupiter({required this.nname ,
   
    required this.age_jupiter1,
    
    
    required this.weight_jupiter1,
 
    }) ;

  @override
  State<jupiter> createState() => _jupiterState();
}

class _jupiterState extends State<jupiter> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/jupiter_wall.png',
            ),fit: BoxFit.cover)
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
                          //  Text('Your Age in Jupiter is ${widget.age_jupiter1} Jovian years',
                         
                          // style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                          // ) , 
                          //   Text('Your Weight in Jupiter is ${widget.weight_jupiter1} Kg',
                          //   style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                          //   ),
                          const SizedBox(
                            height: 300,
                          ),
                          Text(
                           'Jupiter (المشتري "Al-Mushtari")',
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
 "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",                            
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
                                    'assets/jupiter1.jpg',
                                    
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                  child: Image.asset( 
                                    'assets/jupiter2.jpg',                                  
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                  child: Image.asset(
                                    "assets/jupiter3.jpg",
                                    
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
                                          title: "Welcome To Jupiter Astronaut ${widget.nname}",
                                          desc: 'Age: ${widget.age_jupiter1} Jovian years\n'
                                                'Weight: ${widget.weight_jupiter1} Kg',
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
                        Image.asset('assets/jupiter.png')))),
              Positioned(
                left: 32,
                top: 60,
                child: Text(
                  '5',
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