import UIKit

/* 1-4
 Напишите функцию, которая принимает несколько параметров, имя человека, его профессию и количество дней отпуска.
 Пусть функция выводит фразу “Меня зовут ***, я работаю *** и у меня есть *** дней отпуска”.
 Модифицируйте функцию, добавив значения по умолчанию для профессии и количества дней отпуска.
 Попробуйте вызвать функцию три раза, каждый раз с разным количеством параметров.
 Добавьте пустую маску для первого параметра этой функции
 */

func infoAboutSomeOne(name: String = "", prof: String = "iOS Developer", vacation: Int = 35) {
    print("My name is \(name) and i work as \(prof), i have a vaction around \(vacation) days per year")
}

infoAboutSomeOne(name: "Artem", vacation: 35)
infoAboutSomeOne(name: "Bob", prof: "policeman")
infoAboutSomeOne(name: "Sally")

/*
 5-6
 Напишите три функции sum:
 ○ первая принимает два String параметра и выводит строку состоящую из суммы параметров
 ○ вторая принимает два Float параметра и возвращает их сумму
 ○ третья принимает два Int параметра и тоже возвращает их сумму
 Создайте по две переменные каждого типа данных: Int, String и Float и
 протестируйте все три функции
 */

func sum(_ num1: String, _ num2: String) -> String {
    num1 + num2
}

func sum(_ num1: Float, _ num2: Float) -> Float {
    num1 + num2
}

func sum(_ num1: Int, _ num2: Int) -> Int {
    num1 + num2
}

/*
 7-8
 Напишите функцию, принимающую имя человека и замыкание, которое принимает String значение и ничего не возвращает
 Вызовите в функции замыкание которое примет имя человека, если в нем есть символы, или строк “Bob”, если имя было пустым.
 Попробуйте вызвать функцию с разными параметрами
 */

func nameHuman (name: String, closure: (String) -> ()) {
    closure(name)
}

nameHuman(name: "") { name in
    if name.isEmpty {
        print("Bob")
    } else  {
        print(name)
    }
}

nameHuman(name: "Ron") { name in
    if name.isEmpty {
        print("Bob")
    } else  {
        print(name)
    }
}
