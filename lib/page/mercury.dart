import 'package:flutter/material.dart';
import 'package:ieee/constant/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class mercury extends StatefulWidget {

  
final String nname;

final double age_mercury1;

final double weight_mercury1;

   mercury({
     required this.nname ,
    
    required this.age_mercury1,
   
    required this.weight_mercury1,
    
     
     
    }) ;

  @override
  State<mercury> createState() => _mercuryState();
}

class _mercuryState extends State<mercury> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Center(
    //     child: Text('mercury'),
    //   ),
    // );
    return Container(
       decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/mercury.gif', ),fit: BoxFit.cover)
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
                          Text('*To See Your Age & Weight Here, just click on planet icon',
                         
                          style: TextStyle(
                            color: Colors.grey, 
                            fontSize: 12
                          ),
                          ) , 
                          //   Text('Your Weight in Mercury is ${widget.weight_mercury1} Kg',
                          //   style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                            // ),
                           SizedBox(
                            height: 300,
                          ),
                          Text(
                           'Mercury (عطارد "Otared")',
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
                          "Zipping around the sun in only 88 days, Mercury is the closest planet to the sun, and it's also the smallest, only a little bit larger than Earth's moon. Because its so close to the sun (about two-fifths the distance between Earth and the sun), Mercury experiences dramatic changes in its day and night temperatures: Day temperatures can reach a scorching 840  F (450 C), which is hot enough to melt lead. Meanwhile on the night side, temperatures drop to minus 290 F (minus 180 C).",

                            
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
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                  child: Image.asset(
                                    'assets/mercury1.png',
                                    
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                  child: Image.asset( 
                                    'assets/mercury3.jpg',                                  
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 2 ),),
                                 
                                  
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
                                          title: "Welcome To Mercury Astronaut ${widget.nname}",
                                          desc: 'Age: ${widget.age_mercury1} Mercurian years\n'
                                                'Weight: ${widget.weight_mercury1} Kg',
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
                         Image.asset('assets/mercury.png')
                         )
                        )
                       ),
              Positioned(
                left: 32,
                top: 60,
                child: Text(
                  '1',
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