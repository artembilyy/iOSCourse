import UIKit

/* 1
 Создайте протокол Movable, в котором будет метод run(), протокол Fightable с
 методом fight()
 */

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

/* 2
 Создайте протокол Hero, который включает оба протокола и свойство name
 */

protocol Hero: Movable, Fightable {
    var name : String { get set }
}

/* 3
 Создайте не менее двух персонажей для игры на каждый протокол из трех описанных выше.
 Например struct Farmer: Movable { ... }, struct Butcher: Fightable и т.д.
 Реализуйте методы в зависимости от структуры которую вы используете.
 В нашем примере в реализации метода run() у структуры Farmer мы можем вывести
 print(“Farmer: Run”), в методе fight() у Butcher можем вывести print(“Butcher: fight”)
 */

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

/* 4-5
 Создайте класс Tavern (таверна). У нее должен быть массив всех юнитов в
 таверне, которые умеют сражаться: var fighters: [Fightable] = [], и
 аналогичный массив movers, принимающий объекты что могут двигаться.
 Также в таверне будет метод enterTavern(hero: Hero)
 В реализации этого метода будет:
 вызываться метод fight у Hero
 выполняться цикл for по массиву movers, у каждого элемента будет вызываться метод run
 аналогично с предыдущим пунктом, только у fighters метод fight()
 */

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
/* 6-8
 Присвойте свойствам таверны значения: в массив movers передайте
 экземпляры что могут двигаться, в массив fighters тех кто могут сражаться
 Обратитесь к таверне и вызовите метод enterTavern для двух экземпляров
 соответствующих протоколу Hero
 В итоге в консоли должно пройти текстовое сражение, вывод имени героя, посетившего таверну и начавшего сражение,
 после имена тех кто разбегаются, после имена тех кто сражается
 */

let tavern = Tavern(fighers: [Boxer(), Butcher()], movers: [Farmer(), Gardener()])
tavern.enterTavern(hero: Batman())
