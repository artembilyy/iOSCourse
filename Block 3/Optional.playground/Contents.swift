import UIKit

/* 1
 Создайте опциональные переменные типов String, Int, Bool, Float. Разверните (unwrap) их разными способами
 */

let someString: String? = "Ops"
let someInt: Int? = 100
let someBoolean: Bool? = true
let someFloat: Float? = 3.14
func unwrapped<T>(optinal: T?) -> T? {
    guard let someUnwrapped = optinal else {
        return optinal
    }
    return someUnwrapped
}

let unwrappedString = someString ?? " "
print(unwrappedString)

if let unwrappedInt = someInt {
    print(unwrappedInt)
}

func unwrappedBoolean() {
    guard let someBoolean = someBoolean else {
        return
    }
    print(someBoolean)
}

unwrappedBoolean()
print(someFloat!)

/* 2-5
 Создайте класс А, у которого будет опциональное свойство класса B. Пусть у класса B будет свойство “text” типа String.
 Создайте экземпляр класса B, задайте его свойству text значение.
 Создайте класс A и задайте его свойству значение только что созданного класса B.
 Выведите в консоль значение text. Значение в консоли будет помечено как “optional”.
 Разверните значение text разными способами и выведите в консоль (на этот раз пометка “optional” должна исчезнуть)
 */

class B {
    var text: String
    init(text: String) {
        self.text = text
    }
}

class A {
    var text: B?
    init(text: B?) {
        self.text = text
    }
}

let initB = B(text: "Hello")
let initA = A(text: initB)

if let unwrappedText = initA.text?.text {
    print(unwrappedText)
}

let unwrappedText = initA.text?.text ?? ""
print(unwrappedText)

print(initA.text!.text)
