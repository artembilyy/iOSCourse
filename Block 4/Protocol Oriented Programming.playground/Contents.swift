import UIKit
import Darwin

/* 1
 Создаем персонажей для игры
 Создайте enum VehicleType: electric / nonElectric
 */

enum VehicleType {
    case electric
    case nonElectric
}

/* 2
 Создайте протокол Vehicle, который будет включать свойства: weight: Float, speed:
 Float, type: VehicleType, canFly: Bool. Все перечисленные свойства можно пометить
 как { get }. И функцию prepare()
 */

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var canFly: Bool { get }
    var type: VehicleType { get }
    
    func prepare()
}

/* 3
 Расширьте протокол Vehicle с реализацией функции prepare: если Vehicle electric,
 выводим в консоль сообщение "Charge", если nonElectric, выводим сообщение
 "Refuel". Так же задайте значение false для свойства canFly
 */

extension Vehicle {
    var canFly: Bool { return false }
    
    func prepare() {
        if type == .electric {
            print("Charge")
        } else {
            print("Refuel")
        }
    }
}

/* 4
 Создайте протокол FlyableVehicle c функцией getMaxHight -> Float
 */

protocol FlyableVehicle {
    func getMaxHight() -> Float
}

/* 5
 Создайте протокол Vehicle для объектов реализующих FlyableVehicle, добавьте по
 умолчанию для canFly значение true, type - nonElectric. Реализуйте функцию
 getMaxHight. Если это electric объект, пусть он возвращает weight + speed, если
 нет, то weight * speed
 */

extension Vehicle where Self: FlyableVehicle {
    var canFly: Bool { return true }
    var type: VehicleType { return .nonElectric }

    func getMaxHight() -> Float {
    switch self.type {
    case .electric: return weight + speed
    case .nonElectric: return weight * speed
        }
    }
}

/* 6
 Создайте структуры Car, ElectricCar, AirPlane и создайте их экземпляры.
 Внутри структур задавать значения по умолчанию не обязательно,
 инициализатор будет присутствовать у структур по умолчанию
 */

struct Car: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct ElectricCar: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct AirPlane: Vehicle, FlyableVehicle {
    var weight: Float
    var speed: Float
}

let car = Car(weight: 1300, speed: 180, type: .nonElectric)
let electricCar = ElectricCar(weight: 1700, speed: 130, type: .electric)
let airPlane = AirPlane(weight: 50_000, speed: 800)

/* 7
 Выведите в консоль свойства у Car и electricalCar: type canFly. У airPlane
 выведите свойство canFly и вызовите функцию getMaxHight
 */

car.type
electricCar.type
airPlane.canFly
print(Float64(airPlane.getMaxHight()))

/* 8
 Создайте структуру ElectricalAirplane, ее экземпляр c теми же данными которые
 вы использовали для создания обычного самолета. Выведите в консоль
 значение, которое возвращает функция getMaxHight()
 */

struct ElectricalAirplane: Vehicle, FlyableVehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType = .electric
}

let electricalAirPlane = ElectricalAirplane(weight: 60_000, speed: 700, type: .electric)

electricalAirPlane.getMaxHight()
