class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  
  

  PlanetInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    
    
  });
}

 List<PlanetInfo> planetInfo  = [
  PlanetInfo(1,
      name: 'Mercury (عطارد "Otared")',
      iconImage: 'assets/mercury.png',
      
     
      ),
 
  
  
  PlanetInfo(2,
      name: 'Venus (الزهرة "Al-Zuhrah")',
      iconImage: 'assets/venus.png',
     
      ),
       PlanetInfo(3,
      name: 'Earth (الأرض "Al-Ardh")',
      iconImage: 'assets/earth.png',
     
      ),
      
  PlanetInfo(4,
      name: 'Mars (المريخ "Al-Mirrekh")',
      iconImage: 'assets/mars.png',
      
      ),
  PlanetInfo(5,
      name: 'Jupiter (المشتري "Al-Mushtari")',
      iconImage: 'assets/jupiter.png',
     
      ),
  PlanetInfo(6,
      name: 'Saturn (زحل "Zuhal")',
      iconImage: 'assets/saturn.png',
     
      ),
  PlanetInfo(7,
      name: 'Uranus (أورانوس "Oranos")',
      iconImage: 'assets/uranus.png',
      
      ),
  PlanetInfo(8,
      name: 'Neptune (نبتون "Nebton")',
      iconImage: 'assets/neptune.png',
    
      ),
];