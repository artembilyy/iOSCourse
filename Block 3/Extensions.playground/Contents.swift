import UIKit

/* 1
 Напишите расширение “square” на Int, позволяющее возводить число в квадрат
 */

extension Int {
    var square: Int { return self * self }
}

/* 2
 Напишите расширение на String, которое позволит из текста вернуть:
 Первое слово
 Первую часть предложения до запятой
 Первое предложение
 */

extension String {
    var firstWord: String { return self.components(separatedBy: " ").first ?? "" }
    var firstComma: String { return self.components(separatedBy: ",").first ?? ""}
    var firstDot: String { return self.components(separatedBy: ".").first ?? ""}
}

let someText = "Some text, some text. Some text!"

someText.firstWord
someText.firstComma
someText.firstDot

/* 3
 Создайте протокол Runnable с функцией run, Flyable с функцией fly, Alive с функциями
 breath, eat и grow. Каждая функция будет выводить print названия функции. Создайте расширение на Alive, с дефолтной
 реализацией функций breathe, eat. В этой реализации должно выводиться сообщение в консоль “breathe” / “eat”
 */

protocol Runnable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    func eat()
    func grow()
}

extension Runnable {
    func run() {
        print("Run")
    }
}

extension Flyable {
    func fly() {
        print("Fly")
    }
}

extension Alive {
    func breath() {
        print("Breath")
    }
    func eat() {
        print("Eat")
    }
    func grow() {
        print("Grow")
    }
}

/* 4
 Создайте 6 персонажей для вашей игры с помощью структур, каждый из них должен соответствовать как минимум одному протоколу
 Добавьте дефолтную реализацию для всех протоколов (в ней будет вывод сообщения с
 названием функции через команду print())
 В половине созданных структур реализуйте методы протокола, в которых будет
 выводиться название функции и название структуры, например print(“Iron man - Fly”)
 */

struct Robot: Runnable {
}

struct Tiger: Runnable, Alive {
}

struct PinguinSuperPower: Runnable, Flyable, Alive {
}

struct VenusFlytrap: Alive {
    let name: String
    
    func breath() {
        print("\(name) - Breath")
    }
    func eat() {
        print("\(name) - Eat")
    }
    func grow() {
        print("\(name) - Grow")
    }
}

struct Elephant: Runnable, Alive {
    let name: String
    
    func run() {
        print("\(name) - Run")
    }
    func breath() {
        print("\(name) - Breath")
    }
    func eat() {
        print("\(name) - Eat")
    }
    func grow() {
        print("\(name) - Grow")
    }
}

struct Eagle: Flyable, Alive {
    let name: String
    
    func fly() {
        print("\(name) - Fly")
    }
    func breath() {
        print("\(name) - Breath")
    }
    func eat() {
        print("\(name) - Eat")
    }
    func grow() {
        print("\(name) - Grow")
    }
}
