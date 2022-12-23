import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee/constant/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class neptune extends StatefulWidget {

  
final String nname;

final double age_neptune1;

final double weight_neptune1;

   neptune({
       required this.nname ,
    
    required this.age_neptune1,
   
    required this.weight_neptune1,
    
   }) ;

  @override
  State<neptune> createState() => _neptuneState();
}

class _neptuneState extends State<neptune> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(
              'assets/neptune4.jpg' ,
             // 'assets/neptuneanimation.gif',
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
                          // Text('Your Age in Neptune is ${widget.age_neptune1} Neptunian years',
                         
                          // style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                          // ) , 
                          //   Text('Your Weight in Neptune is ${widget.weight_neptune1} Kg',
                          //   style: TextStyle(
                          //   color: Colors.white, 
                          //   fontSize: 25
                          // ),
                          //   ),
                          const SizedBox(
                            height: 300,
                          ),
                          Text(
                           'Neptune (نبتون "Nebton")',
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
                         "The eighth planet from the sun, Neptune is about the size of Uranus and is known for supersonic strong winds. Neptune is far out and cold. The planet is more than 30 times as far from the sun as Earth. Neptune was the first planet predicted to exist by using math, before it was visually detected. Irregularities in the orbit of Uranus led French astronomer Alexis Bouvard to suggest some other planet might be exerting a gravitational tug. German astronomer Johann Galle used calculations to help find Neptune in a telescope. Neptune is about 17 times as massive as Earth and has a rocky core.",

                            
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
                                //SizedBox(width:90),
                                
                                
                                Container(
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey, width: 2 )),
                                  child: Image.asset(
                                                    'assets/neptune1.jpg' ,    
                                      fit: BoxFit.cover,
                                    ),
                                ),
                                SizedBox(width: 70,),
                                  Container(
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey, width: 2 )),
                                    
                                    child: Image.asset(
                                      'assets/neptune3.jpg',
                                      
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  
                                
                                SizedBox(width: 70,),
                               
                                   
                                  Container(
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey, width: 2 )),
                                    child: Image.asset(
                                      'assets/neptune4.jpg',
                                      
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
                                           
                                               
                                          context: context,
                                          style: alertStyle,
                                          type: AlertType.none,
                                          title: "Welcome To Neptune Astronaut ${widget.nname}",
                                          desc: 'Age: ${widget.age_neptune1} Neptunian years\n'
                                                'Weight: ${widget.weight_neptune1} Kg',
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
                                              //ieee_color,
                                              // Color.fromARGB(255, 187, 137, 196),
                                              radius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ],
                                        ).show();
                        },
                        child:
                         Image.asset('assets/neptune.png')))),
              Positioned(
                left: 32,
                top: 60,
                child: Text(
                  '8',
                  style: TextStyle(
                      fontSize: 247,
                      color: primaryTextColor.withOpacity(0.3),
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