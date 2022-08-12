import UIKit

/* 1-2
 Создайте класс Матрос (Sailor), в котором будет инициализатор, одно
 свойство - имя матроса и один метод "introduceMyself". При вызове этого метода, в
 консоль будет выводиться сообщение "Привет, меня зовут *имя матроса*!"
 Создайте класс Корабль, в котором будет инициализатор, два свойства:
 название корабля и массив “матросы”. Добавьте также функцию "introduceAll",
 которая будет выводить приветствие от имени всех матросов, после чего выводить
 сообщение "Мы с корабля *имя корабля*"
 */

class Sailor {
    let name: String
    init(name: String) {
        self.name = name
    }
    func introduceMySelf() {
        print("Hi, my name is \(name)")
    }
}

class Ship {
    let name: String
    var arrayOfSailors: [Sailor] = []
    init(name: String, arrayOfSailors: [Sailor]) {
        self.name = name
        self.arrayOfSailors = arrayOfSailors
    }
    func introduceAll() {
        for sailor in arrayOfSailors {
            print("Hi, my name is \(sailor.name)")
        }
        print("We are from boat named \(name)")
    }
}

/* 3
 Через инициализатор создайте 5 экземпляров класса Матрос и класс Корабль, в который передайте список созданных матросов.
 Вызовите функцию introduceAll.
 Вы должны получить в консоли приветствие от имени всех матросов и название корабля
 */

var ship = Ship(name: "WindSurfer", arrayOfSailors: [])
ship.arrayOfSailors.append(Sailor.init(name: "Bob"))
ship.arrayOfSailors.append(Sailor.init(name: "Stephan"))
ship.arrayOfSailors.append(Sailor.init(name: "Serhio"))
ship.arrayOfSailors.append(Sailor.init(name: "Mark"))
ship.arrayOfSailors.append(Sailor.init(name: "Robert"))
ship.introduceAll()

/* 4
 Создайте класс Titanic, наследник класса Ship. И класс TitanicSeilor,
 наследник Seilor. Пусть TitanicSeilor будет иметь ту же функцию introduseMyself, но
 сообщение будет выводить на английском. Аналогично класс Titanic, только пусть
 его функция introduceAll выводит в на двух языках: то же сообщение что и Ship, а
 после - такое же сообщение на английском. Не меняйте существующие классы
 Ship и Seilor
 */

class TitanicSailor: Sailor {
    override func introduceMySelf() {
        print("Привет, мое имя \(name)")
    }
}

let titanicSailor = TitanicSailor(name: "Boby")
titanicSailor.introduceMySelf()

class Titatic: Ship {
    override func introduceAll() {
        super.introduceAll()
        for sailor in ship.arrayOfSailors {
            print("Привет, меня зовут \(sailor.name)")
        }
        print("Мы с корабля под названием \(name)")
    }
}

let titatinic = Titatic(name: "Titanic", arrayOfSailors: ship.arrayOfSailors)

titatinic.introduceAll()

/* 5
  Создайте класс Calculator, с функциями + - * /. Создайте класс CalculatorPro,
  который будет также вычислять процент от числа возводить число в степень
 */

class Calculator {
    func plus(_ num1: Double, _ num2: Double) -> Double {
        let result = num1 + num2
        return result
    }
    
    func minus(_ num1: Double, _ num2: Double) -> Double {
        let result = num1 - num2
        return result
    }
    
    func multiply(_ num1: Double, _ num2: Double) -> Double {
        let result = num1 * num2
        return result
    }
    
    func divide(_ num1: Double, _ num2: Double) -> Double {
        let result = num1 / num2
        return result
    }
}

class CalculatorPro {
    func getPercentage(number: Double, percent: Double) -> Double {
        return Double((number * percent) / 100)
    }
    
    func exponetiation(num: Double, numberOfDegree: Double) -> Double {
        pow(num, numberOfDegree)
    }
}

let calc = CalculatorPro()

calc.exponetiation(num: 5.0, numberOfDegree: 2.0)

/* 5.1*
 Создайте класс SuperProCalc, наследник CalculatorPro, который будет
 вычислять сложные проценты для расчета суммы депозита на указанный период
 времени с указанной процентной ставкой
 */

class SuperProCalc: CalculatorPro {
    func compoundInterest(numb1: Double, numb2: Double, numb3: Double) -> Double {
        let result = pow(numb1 * (1 + numb2/100), numb3)
        return result
    }
}

/* 6
 Создайте функцию которая принимает 1 параметр, процент заряда батареи.
 Пусть функция вернет сообщения для пользователя в зависимости от этого процента:
 ● если 100%: “Устройство заряжено”,
 ● если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
 ● если 20-40%, “Поставьте устройство на зарядку”
 ● если 0%, “Устройство полностью разряжено”
 В остальных случаях не выводите ничего. Используйте switch case.
 */

func batteryLifePercent(percent: Int) -> String {
    switch percent {
    case 100: return "Perfect, battery is full now"
    case 70...80: return "Chill..."
    case 40...70: return "You need to charge your phone in next 4 hours"
    case 20...40: return "Charge now please"
    case 0: return "Your battery is dead"
    default: return "Ops...Error"
    }
}

let actualBatteryStatus = batteryLifePercent(percent: 0)
print(actualBatteryStatus)
