void main() {
  
  /*Car myNormalCar = Car();
  print(myNormalCar.numberOfSeat);
  myNormalCar.drive();
  */
  
  ElectricCar myTesla = ElectricCar();
  print(myTesla.carRange);
  myTesla.drive();
  
  HoverCar myDronePod = HoverCar();
  myDronePod.drive();
  
  SelfDriveCar iDriveCar = SelfDriveCar('1 dart drive');
  
  iDriveCar.drive(); 

}

class Car {
  int numberOfSeat = 5;
  
  void drive() {
    print('wheels turn');
  }
}

class ElectricCar extends Car {
  int carRange = 30;
  
}

class HoverCar extends Car {
  @override
  void drive() {
    print('float forwards');
  }
}

class SelfDriveCar extends Car {
  
  String destination;
  
  SelfDriveCar(String userDestination){
    destination = userDestination;
  }
  
  @override
  void drive() {
    super.drive();
    
    print('steering towards $destination');
  }
}