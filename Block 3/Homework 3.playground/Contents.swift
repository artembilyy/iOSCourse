import UIKit

/* 1
 Откройте презентацию по протоколам, в конце вы найдете блок с практикой.
 Выполните практику, создав простую игровую ситуацию с помощью протоколов
 */

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name : String { get set }
}

struct Farmer: Movable {
    func run() {
        print("Farmer: Run")
    }
}

struct Gardener: Movable {
    func run() {
        print("Gardener: Run")
    }
    
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher: Fight")
    }
    
}

struct Boxer: Fightable {
    func fight() {
        print("Boxer: Fight")
    }
}

struct Batman: Hero {
    var name = "Batman"
    func fight() {
        print("\(name): Fight")
    }
    func run() {
        print("\(name): Run")
    }
}

class Tavern {
    var fighters: [Fightable]
    var movers: [Movable]
    init(fighers: [Fightable], movers: [Movable]) {
        self.fighters = fighers
        self.movers = movers
    }
    func enterTavern(hero: Hero) {
        hero.fight()
        for mover in movers {
            mover.run()
        }
        for fighter in fighters {
            fighter.fight()
        }
    }
}

let tavern = Tavern(fighers: [Boxer(), Butcher()], movers: [Farmer(), Gardener()])
tavern.enterTavern(hero: Batman())

/* 2 -> Отдельный проект
 Лучший способ закрепить информацию, придумать свой способ применения протоколов.
 Откройте последний слайд практики по протоколам, и выполните задание. Необходимо
 создать свою мини игру, где вы могли бы использовать протоколы, но будет минимальный
 набор требований:
 ○ Должны быть функции, возвращающие опциональные значения
 ○ Эти функции должны вызываться и опционалы должны быть “развернуты”
 ○ Перенесите эту игру в XCode проект
 Организуйте красивую файловую структуру, разные типы в разные файлы. Используйте папки.
   4 -> Добавить во 2
 Вернитесь к созданной вами игре во втором задании и добавьте для всех протоколов реализацию методов по умолчанию
 */

/* 3
 3. Напишите расширения на следующие типы:
 Int - Функция возводит число в N-ую степень. Попробуйте решить задачу без использования стандартной функции pow(),
 решите ее с использованием циклов
 String - Вычисляемое свойство isPalindrome. Возвращает Bool, в зависимости от того является ли строка палиндромом
 */

extension Int {
    func exponentiation(pow: Int) -> Int {
        var result = 1
        var powCounter = 1
        while powCounter <= pow {
            result *= self
            powCounter += 1
        }
        return result
    }
}

5.exponentiation(pow: 5)

extension String {
    var isPalindrome: Bool { return self.lowercased() == String(self.lowercased().reversed()) }
}
                                                   
let test = "Bob"
test.isPalindrome


/*
 Откройте презентацию по Generics, в конце презентации вы найдете практику
 5. Выполните практику на первом слайде.
 6. Выполните практику второго слайда. Здесь вы можете реализовать либо стек, либо
 связанный список (stack / linked list)
 */

//5

func swapValues<T>(value1: inout T, value2: inout T) {
    let storage = value1
    value1 = value2
    value2 = storage
}

func returnTuple<T>(value1: T, value2: T) -> (T, T) {
    (value2, value1)
}

protocol Summable {
    static func +(val1: Self, val2: Self) -> Self
}

extension Int: Summable{
    
}
extension String: Summable {
    
}
extension Double: Summable {
    
}
extension Float: Summable {
    
}

func genericSum<T: Summable>(value1: T, value2: T) -> T {
    value1 + value2
}

//only numbers

func genericSum<T: Numeric>(value1: T, value2: T) -> T {
    value1 + value2
}


struct GenericDict<T: Hashable, D> {
    var dict: Dictionary<T, D> = [:]
    
    mutating func addKeysAndValues(key: T, value: D) -> [T:D] {
        dict[key] = value
        return dict
    }
    mutating func accessToValue(key: T) -> D? {
        dict[key]
    }
}

// 6 Create stack

struct Stack<T> {
    var iteams: Array<T> = []
    var isEmpty: Bool { return iteams.isEmpty }
    var count: Int { return iteams.count }
    
    func peek() -> T? {
        guard let topElement = iteams.last else {
            return nil
        }
        return topElement
    }
    mutating func push(_ elemenent: T) {
        iteams.append(elemenent)
    }
    mutating func pop() -> T? {
        return iteams.popLast()
    }
}
