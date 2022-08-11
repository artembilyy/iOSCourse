import UIKit

// Loops: "for" and "while"

/* 1-4 Создайте массив weekDays с рабочими днями недели
 Пройдите по нему в цикле for in и выведите каждый день в консоль
 Модифицируйте цикл, чтобы вывести в консоль сообщение:
 *порядковый номер* - *название* дня недели
 Модифицируйте цикл, добавив условие, чтобы цикл выполнялся только для первых трех элементов
 */
let weekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
for day in weekDays {
    print(day)
}
for (index, day) in weekDays.enumerated() {
    if index < 3 {
        print("\(index + 1) - \(day) of the week")
    } else {
        break
    }
}

/* 5-8 Создайте массив на 10 элементов с числами (возраст ваших знакомых).
 Добавьте цикл for in который пройдется по этим элементам и выведет в консоль сообщение “Мне *** лет”
 После чего добавьте проверку, младше 18 лет или старше. В первом случае выводим сообщение: “Ребенок”, во втором: “Взрослый”.
 Для всех, кто младше 18 лет, измените сообщение “Ребенок” на “Я уже отпраздновал: ”. После чего запустите вложенный цикл, который пройдется по количеству лет человека и выведет на каждой итерации *** лет. Например: “Я уже отпраздновал: ... 5 лет ⏎ 6 лет ⏎ 7 лет ...”
 */
let ageOfFriends = [20, 17, 22, 28, 16, 25, 19, 15, 24, 17]
for age in ageOfFriends {
    print("I am \(age) years old")
    if age < 18 {
        var i = 0
        print("I already celebreted:")
        while i <= age {
            i += 1
            print("\(i)")
        }
    } else {
        print("Adult")
    }
}