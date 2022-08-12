import UIKit

/* 1
 Создайте класс Calculator, который не содержит свойств, но содержит методы:
 ○ Прибавить - принимает два числа и возвращает их сумму
 ○ Вычесть - принимает два числа и возвращает их разницу
 ○ Умножить - принимает два числа и возвращает результат их умножения
 ○ Разделить - принимает два числа и возвращает результат их деления
 ○ Остаток от деления - принимает два числа и возвращает остаток от деления первого на второе
 */

class Calculator {

    func plus(_ num1: Double, _ num2: Double) -> Double {
        num1 + num2
    }
    
    func minus(_ num1: Double, _ num2: Double) -> Double {
        num1 - num2
        
    }
    
    func multiply(_ num1: Double, _ num2: Double) -> Double {
        num1 * num2
    }
    
    func divide(_ num1: Double, _ num2: Double) -> Double {
        num1 / num2
        
    }
    func remainder(_ num1: Int, _ num2: Int) -> Int {
        num1 % num2
    }
}

/* 2
 Создайте класс SuperCalculator. Пусть он будет наследоваться от Calculator и содержать
 дополнительные методы:
 ○ возвести в степень - принимает два параметра: число и степень в которую его нужно
 возвести. Возвращает результат возведения числа в степень
 ○ получить процент - принимает два параметра: число и процент который мы хотим
 получить. Например число 50 и процент 10. Функция возвращает 5, так как 5 это 10% от
 50-ти
 */

/* 3-4
 Переопределите функции описанные в родительском классе, добавьте в каждую из них
 команду print(“I am SuperCalculator”). Протестируйте эти методы, посмотрите что будет,
 если не использовать вызов метода родителя через команду super
 Создайте экземпляр класса SuperCalculator и протестируйте все методы со своими
 значениями, выведя результаты в консоль через команду: print(SuperCalculator().myFunc())
 */

class SuperCalculator: Calculator {
    override func plus(_ num1: Double, _ num2: Double) -> Double {
        super.plus(num1, num2)
        print("I am Calculator Pro")
        return num1 + num2
    }
    
    func powNumber(_ number: Double, _ power: Double) -> Double {
        pow(number, power)
    }
    
    func getPercentage(number: Double, percent: Double) -> Double {
        return Double((number * percent) / 100)
    }
}

print(SuperCalculator().plus(10, 10))

