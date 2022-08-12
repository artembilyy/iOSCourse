import UIKit

/* 1-2
 Создайте переменные типа Int “Проходной бал” и “Мой бал”, которые
 будут содержать значения от 1 до 100. Создайте switch else, который будет
 проверять, является ли мой балл выше проходного или ниже.В одном
 случае пусть выводиться сообщение “К сожалению ваш балл ниже проходного”,
 во втором случае “Поздравляем! Вы поступили!”
 Попробуйте реализовать все то же самое, с помощью guard else
 */

var passGrade: Int = Int.random(in: 50...100)
var myGrade: Int = Int.random(in: 30...100)

switch passGrade {
case _ where passGrade > myGrade: print("Try again later")
case _  where passGrade < myGrade: print("Nice! You pass it!")
default: print("Error")
}

func passExam(myGrade: Int) {
    guard myGrade > passGrade else {
        print("Try again later")
        return
    }
    print("Nice! You pass it!")
}

passExam(myGrade: myGrade)

/* 3-4
 Создайте switch case, который будет проверять переменную типа Int, с
 возможными значениями от 1 до 7. В зависимости от ее значения выведите в консоль день недели
 Попрактикуйтесь с использованием выражений fallthrough и where,
 добавив их в switch case из прошлого задания
 */

var someInt = Int.random(in: 1...7)

var isSunny = false

switch someInt {
case 1 where !isSunny:
    print("Monday")
case 2:
    print("Tuesday")
    fallthrough
case 3: print("Wednesday")
    fallthrough
case 4 where isSunny: print("Thursday")
case 5: print("Friday")
case 6: print("Saturady")
    fallthrough
case 7: print("Sunday")
default: print("Error")
}

