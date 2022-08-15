import UIKit

/* 1, 2
 В презентации и в playgrounds были приведены варианты перечислений.
 Ключевая идея - каждый case может стать значением enum. Если значениями являются дни недели,
 то enum должен называться “День недели”.
 Попробуйте придумать два своих перечисления. Каждый из которых должен соответствовать ключевой идее описанной выше
 //
 В первом из ваших enum добавьте RawValue. Укажите его только
 для части case и протестируйте, создав несколько экземпляров этого enum
 
 Во второй enum добавьте функцию, в которой будет switch.
 Пусть функция возвращает какое-то значение в зависимости от значения enum
 */

enum Month: Int {
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case jule
    case august
    case september
    case october
    case november
    case december
}

let myBirthday = Month.january
let myWifesBirthady = Month.february
myBirthday.rawValue
myWifesBirthady.rawValue

enum ProgrammingLanguages {
    case html
    case css
    case js
    case angular
    case java
    case php
    case python
    case node
    
    func sideOfDevelopment() -> String {
        switch self {
        case .html, .css, .js, .angular:
            return "FrondEnd Developer"
        case .java, .php, .python, .node:
            return "BackEnd Developer"
        }
    }
}

let bobWorkAs = ProgrammingLanguages.html
bobWorkAs.sideOfDevelopment()

/* 3
 Создайте enum с ассоциативными значениями для каждого из его case.
 Протестируйте его, добавив функцию, которая принимает значение enum
 и возвращаемое значение зависит от принятого
 */

enum TypeOfPaymentOptions {
    case card(String)
    case cash(String)
    case payPal(String)
}

func getSalaryPayment(option: TypeOfPaymentOptions) -> String {
    switch option {
    case .card(let cardOption):
        return "I'll get a salary to my \(cardOption)"
    case .cash(let cashOption):
        return "I'll get a salary by \(cashOption) "
    case .payPal(let payPalOption):
        return "I'll get a salary to my \(payPalOption) "
    }
}

let myJob = TypeOfPaymentOptions.card("credit card")

getSalaryPayment(option: myJob)
