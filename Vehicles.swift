/*
* The vehicles program.
*
* @author Matthew Sanii
* @version 1.0
* @since 2021-12-16
*/

protocol Vehicle {

  /**
  * Initializing speed variable.
  */
  var speed: Int {get set}

  var maxSpeed: Int {get}

  var speedChange: Int {get}

  var wheels: Int {get}

  /**
  * accelerate method.
  */
  func accelerate() -> Int

  /**
  * the brake method.
  */
  func brake() -> Int

  func getWheels() -> Int
}

class Bike: Vehicle {

  private var cadence: Int = 1

  var speed = 0

  let maxSpeed = 100

  let speedChange = 5

  let wheels = 2

  /**
  * The bike initializer.
  *
  * @param cadance the cadence of the bike.
  */
  init(_ cadance: Int) {
    cadence = cadance
  }

  /**
  * ringBell method, which returns a Ding! string.
  *
  * @return Ding!
  */
  func ringBell() -> String {
    return "Ding!"
  }

  /**
  * The getCadence method.
  *
  * @return cadence.
  */
  func getCadence() -> Int {
    return cadence
  }

  func accelerate() -> Int {
    speed += speedChange
    if speed > maxSpeed {
      return -1
    } else {
      return speed
    }
  }

  func brake() -> Int {
    speed = 0
    return speed
  }

  func getWheels() -> Int {
    return wheels
  }
}

class Truck: Vehicle {

  private var colour: String = "blue"

  private var plate: String = "123qwe"

  var speed = 0

  let maxSpeed = 100

  let speedChange = 5

  let wheels = 4

  /**
  * The truck initializer.
  *
  * @param color the truck color.
  * @param plateinfo the plate info.
  */
  init(_ color: String, _ plateinfo: String) {
    plate = plateinfo
    colour = color
  }

  /**
  * The accelerates method.
  *
  * @return truckSpeed.
  */
  func accelerate() -> Int {
    speed += speedChange
    speed += speedChange
    if speed > maxSpeed {
      return -1
    } else {
      return speed
    }
  }

  /**
  * The provideAir method.
  *
  * @return Honk Honk!
  */
  func provideAir() -> String {
    return "Honk Honk!"
  }

  /**
  * The getPlate method.
  *
  * @return plate
  */
  func getPlate() -> String {
    return plate
  }

  /**
  * The getColor method.
  *
  * @return colour.
  */
  func getColor() -> String {
    return colour
  }

  /**
  * The truckWheels method.
  *
  * @return number of wheels the truck has.
  */
  func getWheels() -> Int {
    return wheels
  }

  func brake() -> Int {
    speed = 0
    return speed
  }
}

print("Input color of truck: ")
let truckColor = readLine()!
print("Input plate number: ")
let platInfo = readLine()!
print("Set bike cadence: ")
let bikeCadence = readLine()!
let startCadence = Int(bikeCadence) ?? -1
let colorInput = Int(truckColor) ?? 0
let plateInput = platInfo.count
if colorInput == 0 && plateInput != 0
&& startCadence != -1 {
  let truck = Truck(truckColor, platInfo)
  let bike = Bike(startCadence)
  print("Bike speed after accelerating is", bike.accelerate())
  print("Truck speed after accelerating is", truck.accelerate())
  print("The bike's bell goes", bike.ringBell())
  print("The truck's horn goes", truck.provideAir())
  print("The bike's cadence is now", bike.getCadence())
  print("The truck's plate number is", truck.getPlate())
  print("The truck's color is", truck.getColor())
  print("The bike has", bike.getWheels(), "wheels.")
  print("The truck has", truck.getWheels(), "wheels.")
  let vehile = Vehicle()
} else {
  print("You must input strings for truck color and plate number, and int for bike cadence.")
}
