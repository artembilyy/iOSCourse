import UIKit

// 1 Напишите функцию принимающую два параметра: имя и фамилия. Пусть она возвращает полное имя человека

func fullName(_ firstName: String, _ lastName: String) -> String {
    let fullName = firstName + lastName
    return fullName
}

fullName("Artem", "Bilyi")

// 2 Напишите функцию, которая принимает число и возвращает его квадратный корень
 
func sqrtFunc(_ number: Double) -> Double {
    let result = sqrt(number)
    return result
}

sqrtFunc(25.0)

// 3 Напишите функцию, которая принимает число и возвращает его во второй степени
 
func powFunc(_ number1: Double, _ number2: Double) -> Double {
    let result = pow(number1, 2.0)
    return result
}

pow(6.0, 4.0)

// 4 Напишите функцию, принимающую два параметра. Пусть она возвращает сумму квадратного корня первого параметра и второго параметра в квадрате. Используйте функции, что вы написали выше

func someMath(_ number1: Double, _ number2: Double) -> Double {
    let result = sqrtFunc(number1) + powFunc(number2, 2.0)
    return result
}

someMath(25.0, 5.0)

/* 5
 Создайте цикл от 1 до 10, внутри которого создайте вложенный цикл от 1 до 10.
 На каждой итерации вложенного цикла вызовите функцию из прошлого задания.
 В качестве первого параметра передавайте номер итерации внешнего цикла, в качестве второго параметра
 передавайте номер итерации внутреннего цикла
 */

for i in 1...10 {
    for j in 1...10 {
        someMath(Double(i), Double(j))
    }
}
