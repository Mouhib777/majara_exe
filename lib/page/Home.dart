import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ieee/Model/planetInfo.dart';
import 'package:ieee/constant/constant.dart';
import 'package:ieee/page/earth.dart';
import 'package:ieee/page/jupiter.dart';
import 'package:ieee/page/mars.dart';
import 'package:ieee/page/mercury.dart';
import 'package:ieee/page/neptune.dart';
import 'package:ieee/page/saturn.dart';
import 'package:ieee/page/uranus.dart';
import 'package:ieee/page/venus.dart';
import 'package:ieee/page/welcome.dart';
import 'package:ieee/widget/card.dart';

class HomePage extends StatefulWidget {
 final String aage;
  
final String nname;
final String wweight; 
final double age_earth;
final double age_jupiter;
final double age_mars;
final double age_mercury;
final double age_neptune;
final double age_saturn;
final double age_uranus;
final double age_venus;
final double weight_earth;
final double weight_jupiter;
final double weight_mars;
final double weight_mercury;
final double weight_neptune;
final double weight_saturn;
final double weight_uranus;
final double weight_venus;
            

  

   HomePage({
    required this.nname ,
    required this.age_earth,
    required this.age_jupiter,
    required this.age_mars,
    required this.age_mercury,
    required this.age_neptune,
    required this.age_saturn,
    required this.age_uranus,
    required this.age_venus,
    required this.weight_earth,
    required this.weight_jupiter,
    required this.weight_mars,
    required this.weight_mercury,
    required this.weight_neptune,
    required this.weight_saturn,
    required this.weight_uranus,
    required this.weight_venus,
     required this.aage,
    required this.wweight,
                       
     }) ;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//String? age;  
String? nname;
//String? weight;

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('${widget.nname}'),
      // ),
     
        // backgroundColor: 
        // gradientEndColor
        // ,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/universe.jpg', ),fit: BoxFit.cover)
            ),
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [ gradientEndColor],
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         stops: const [0.1, 0.9])),
          child: SafeArea(
            
              child: Column(
            children: <Widget>[
              Padding(
      padding: const EdgeInsets.all(17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Text(
            //   "IEEE",
            //   style: TextStyle(
            //       color: titleTextColor,
            //       fontSize: 40,
            //       fontWeight: FontWeight.w900,
            //       fontFamily: 'Avenir'),
            //   textAlign: TextAlign.left,
            // ),
         //   SizedBox(width: 20,),
            InkWell( 
              onTap: () {
                 Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      welcome())
                               );
              },
              child: 
            Image(
              image: AssetImage("assets/ieee1.png")))
          ],
        ),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10,),
            Row(
              children: [
                Text(
                  "Explore Our Solar System Astronaut ${widget.nname}",
                  style: TextStyle(
                      color: titleTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(width: 10,),
                Image.asset('assets/astronaut.png',
                height: 32,
                )
              ],
            ),
            // SizedBox(
            //   width: 40,
            //   child: Icon(
            //     Ionicons.planet,
            //     color: secondaryTextColor,
            //   ),
            // )
          ],
        )
      ]),
    ),
             
              // const HeaderWidget(

              // ),
              InkWell(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.7,
                  child: Swiper(
                    itemCount: planetInfo.length,
                    itemWidth: MediaQuery.of(context).size.width,
                    itemHeight: MediaQuery.of(context).size.height,
                    layout: SwiperLayout.TINDER,
                    pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            color: dotColor,
                            activeColor: Colors.white,
                            activeSize: 12,
                            space: 4)),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          //  Navigator.push(
                          //     context,
                          //     PageRouteBuilder(
                          //         pageBuilder: (context, animation,
                          //                        AnimationEffectTiming    ) => 
                          //                 testPage()
                                      
                          //                 )
                          // );
                          if (planetInfo[index].name == 'Mercury (عطارد "Otared")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      mercury(
                                       age_mercury1: double.parse('${widget.age_mercury}') ,
                                       nname: '${widget.nname}', 
                                       weight_mercury1: double.parse('${widget.weight_mercury}'),
                                      
                    
                                      ))
                          );
                          }else if (planetInfo[index].name == 'Venus (الزهرة "Al-Zuhrah")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      venus(
                                          age_venus1: double.parse('${widget.age_venus}') ,
                                       nname: '${widget.nname}', 
                                       weight_venus1: double.parse('${widget.weight_venus}'),
                                        
                                      ))
                          );
                          }else if (planetInfo[index].name == 'Earth (الأرض "Al-Ardh")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      earth(aage: '${widget.aage}', 
                                      nname: '${widget.nname}', 
                                      wweight: '${widget.wweight}',
                                       
                                      ))
                          );
                          }else if (planetInfo[index].name == 'Mars (المريخ "Al-Mirrekh")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      mars(age_mars1: double.parse('${widget.age_mars}'),
                                       nname: '',
                                        weight_mars1: double.parse('${widget.weight_mars}'),
                                        
                                      ))
                          );
                          }else if (planetInfo[index].name == 'Jupiter (المشتري "Al-Mushtari")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      jupiter(
                                         age_jupiter1: double.parse('${widget.age_jupiter}') ,
                                       nname: '${widget.nname}', 
                                       weight_jupiter1: double.parse('${widget.weight_jupiter}'),
                                         
                                      ))
                          );
                          }else if (planetInfo[index].name == 'Saturn (زحل "Zuhal")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      saturn(
                                         age_saturn1: double.parse('${widget.age_saturn}') ,
                                       nname: '${widget.nname}', 
                                       weight_saturn1: double.parse('${widget.weight_saturn}'),
                                        
                                      ))
                          );
                          }else if (planetInfo[index].name == 'Uranus (أورانوس "Oranos")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      uranus(
                                         age_uranus1: double.parse('${widget.age_uranus}') ,
                                       nname: '${widget.nname}', 
                                       weight_uranus1: double.parse('${widget.weight_uranus}'),
                                        
                                      ))
                          );
                          
                          }else if (planetInfo[index].name == 'Neptune (نبتون "Nebton")'){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      neptune(
                                        age_neptune1: double.parse('${widget.age_neptune}') ,
                                       nname: '${widget.nname}', 
                                       weight_neptune1: double.parse('${widget.weight_neptune}'),
                                       
                                      ))
                          );
                          }





                          // })
                          // Navigator.push(
                          //     context,
                          //     PageRouteBuilder(
                          //         pageBuilder: (context, animation,
                          //                 secondaryAnimation) =>
                          //             DetailsPage(
                          //                 planetInfo:  
                          //                 planetInfo[index] 
                          //                 ) 
                          //                 )
                          // );
                        },
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 100,
                                ),
                                CustomCard(
                                  name: planetInfo[index].name,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Hero(
                                  tag: planetInfo[index].position,
                                  child:
                                      Image.asset(planetInfo[index].iconImage)),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 42,),
             Text('Developed By Mouhib Sahbani ', 
             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
             ),
            
            ],
            
          )
          
          ),
          
        )
        
        );
  }
}