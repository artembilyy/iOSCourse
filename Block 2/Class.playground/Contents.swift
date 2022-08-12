import UIKit

/* 1-3
 Создайте класс Phone, который содержит переменные number, model и weight
 Создайте 2 экземпляра этого класса и выведите в консоль значения
 их свойств.
 Добавьте в класс Phone методы:
 receiveCall – имеет один параметр – имя звонящего. Выводит на консоль
 сообщение “Звонит \(name)”
 getNumber – возвращает номер телефона
 */

class Phone {
    var number: Int
    var model: String
    var weight: Double
    
    init(number: Int, model: String, weight: Double) {
        self.number = number
        self.model = model
        self.weight = weight
    }
    convenience init() {
        self.init(number: 0, model: "", weight: 0)
    }
    convenience init(number: Int, model: String) {
        self.init(number: number, model: model, weight: 0.0)
    }
    
    func receiveCall(name: String) {
        print("\(name) call you")
    }
    func getNumber(phoneNumber: Int) -> Int {
        return phoneNumber
    }
    func receiveCall(name: String, number: Int) {
        print("\(name), \(number)")
    }
    func sendMessage(numberForMessage: Int) {
        print("Message for \(numberForMessage)")
    }
}

let iPhone = Phone(number: 663764109, model: "13 Pro Max", weight: 0.250)
let samsung = Phone(number: 955214613, model: "S22 Ultra", weight: 0.270)

/* 4-6
 Добавьте экземпляры класса в массив и вызовите эти методы для каждого из них с помощью цикла
 Добавьте в класс метод receiveCall, который принимает два параметра - имя звонящего и номер телефона звонящего.
 Вызовите этот метод для каждого экземпляра.
 Создайте метод sendMessage. Он будет принимать на вход номера телефонов, которым будет отправлено сообщение.
 Метод выводит в консоль номера этих телефонов.
 */

var phonesArray = [iPhone, samsung]

phonesArray.forEach { phone in
    phone.receiveCall(name: "Sally")
    phone.getNumber(phoneNumber: 65221315)
}

phonesArray.forEach { phone in
    phone.receiveCall(name: "Mom", number: 958467069)
    phone.sendMessage(numberForMessage: 752815596)
}

/* 7-10
 Добавьте инициализатор в класс Phone, который принимает на вход три параметра
 для инициализации переменных класса - number, model и weight
 Добавьте инициализатор, который принимает на вход два параметра для инициализации переменных класса - number, model.
 Добавьте инициализатор без параметров.
 Вызовите из инициализатора с двумя параметрами конструктор с тремя.
 */

let phone = Phone(number: 5411251, model: "Xiomi", weight: 0)

let nokia = Phone(number: 1351251, model: "Nokia")
