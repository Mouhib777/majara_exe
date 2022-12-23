import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee/page/Home.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
    final _formKey = GlobalKey<FormState>();
  var _nameTextController = TextEditingController();
  var _ageTextController = TextEditingController();
  var _weightTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String? name ; 
    String? age ; 
    String? Weight ; 
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/splash.gif'),
        fit:BoxFit.cover )
      ),
      
      child: Scaffold(
        
        backgroundColor: Colors.transparent, 
        body: Center(
          child: SizedBox(
            //height: MediaQuery.of(context).size.height*1 ,
            width: MediaQuery.of(context).size.width*0.4 ,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/tsyp3.png',height: 330,),
                  TextFormField(
                    controller: _nameTextController,
                    
                  decoration: InputDecoration(
                    hintText: 'Entre Your Name',
                    floatingLabelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20
                       ),
                     label: Text('Your Name',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ) ,
                        ),
                    filled: true,
                    fillColor: Color.fromARGB(119, 244, 67, 54),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  validator: (value){
                   if (value == null || value.isEmpty) {
                  return '7ot nayek ismek';
                  }else{
                    setState(() {
                      name = value ; 
                    });
                    return null ; 
                  }
                  }
                  
                  ,
                  
                  onChanged: (data){
                    name=data ; 
                  },
                ),
                SizedBox(height: 100,),
                  Center(
                    child:
                    TextFormField(
                      controller: _ageTextController,
                      
                      decoration: InputDecoration(
                         label: Text('Your Age',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ) ,
                        ),
                         hintText: 'Entre Your Age',
                        floatingLabelStyle: TextStyle(
                        color: Colors.blueGrey
                       ),
                        
                        filled: true,
                        fillColor: Color.fromARGB(119, 244, 67, 54),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                       validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '3omrek';
                                    } else {
                                      setState(() {
                                        age = value;
                                      });
                                      return null;
                                    }
                                  },
                      onChanged: (value){
                    age=value ; 
                  },
                    ),
                    
                  ),
                  SizedBox(height: 100,),
                   Center(
                     child: TextFormField(
                      controller: _weightTextController,
                  decoration: InputDecoration(
                     label: Text('Your Weight',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ) ,
                        ),
                     hintText: 'Entre Your Weight',
                     
                       floatingLabelStyle: TextStyle(
                        color: Colors.blueGrey
                       ),
                      filled: true,
                       fillColor: Color.fromARGB(119, 244, 67, 54),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)
                      ),
                  ),
                   validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'weight';
                                    } else {
                                      setState(() {
                                      Weight = value;
                                      });
                                      return null;
                                    }
                                  },
                  onChanged: (value){
                    Weight=value ; 
                  },
                ),
                   ),
                   SizedBox(height: 20,),
                   SizedBox(
                    height: 60,
                    width: 150,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor:Colors.black38 ,
                            //Color.fromARGB(255, 230, 144, 118),
                          ),
                          child: Text(
                            'Discover',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              //color: Color.fromARGB(255, 250, 214, 211)
                            ),
                          ), 
                     onPressed: () {
                      var age_earth = (double.parse(age!)).toStringAsFixed(3)  ; 
                      var age_jupiter = ((double.parse(age!) * 365)/(11.9*365)).toStringAsFixed(1) ; 
                      var age_mars = ((double.parse(age!) * 365)/687).toStringAsFixed(1) ; 
                      var age_mercury = ((double.parse(age!) * 365) / 88).toStringAsFixed(1)  ; 
                      var age_neptune =((double.parse(age!) * 365)/(164.8*365)).toStringAsFixed(1) ; 
                      var age_saturn = ((double.parse(age!) * 365)/(29.45*365) ).toStringAsFixed(1); 
                      var age_uranus = ((double.parse(age!) * 365)/(84*365)).toStringAsFixed(1) ; 
                      var age_venus = ((double.parse(age!) * 365)/(225)).toStringAsFixed(1) ; 
                      var weight_earth = (double.parse(Weight!)).toStringAsFixed(2)  ; 
                      var weight_jupiter = (double.parse(Weight!) * 2.34).toStringAsFixed(2) ; 
                      var weight_mars = (double.parse(Weight!) * 0.38 ).toStringAsFixed(2); 
                      var weight_mercury = (double.parse(Weight!) * 0.38).toStringAsFixed(2) ; 
                      var weight_neptune = (double.parse(Weight!) * 1.19).toStringAsFixed(3) ; 
                      var weight_saturn = (double.parse(Weight!) * 1.06).toStringAsFixed(3) ; 
                      var weight_uranus = (double.parse(Weight!) * 0.92).toStringAsFixed(3) ; 
                      var weight_venus = (double.parse(Weight!) * 0.91).toStringAsFixed(3) ; 
                       
                      

                      print('${name}\n ${age}\n ${Weight}');
                       Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage(
                  aage: '${age}',
                   nname: '${name}',
                    wweight: '${Weight}',
                     age_earth: double.parse( '${age_earth}'),
                      age_jupiter: double.parse( '${age_jupiter}'),
                       age_mars: double.parse( '${age_mars}'), 
                       age_mercury: double.parse( '${age_mercury}'), 
                       age_neptune: double.parse( '${age_neptune}'), 
                       age_saturn: double.parse( '${age_saturn}'), 
                       age_uranus: double.parse( '${age_uranus}'), 
                       age_venus: double.parse( '${age_venus}'),
                        weight_earth: double.parse( '${weight_earth}'),
                         weight_jupiter: double.parse( '${weight_jupiter}'), 
                        weight_mars: double.parse( '${weight_mars}'),
                         weight_mercury: double.parse( '${weight_mercury}'),
                         weight_neptune: double.parse( '${weight_neptune}'), 
                         weight_saturn: double.parse( '${weight_saturn}'),
                          weight_uranus: double.parse( '${weight_uranus}'),
                           weight_venus: double.parse( '${weight_venus}')
                    ,)));
                       
                     },
                     ),
                   )
                ],
              ),
            ),
          ),
        ),

      ));
  }
}