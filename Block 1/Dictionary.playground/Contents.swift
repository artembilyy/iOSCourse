import UIKit

//Dictionary

/* 1 Создайте 3 dictionary, добавьте в каждый не менее трех элементов:
 ○ String: String - Страна: Столица
 ○ String: Int - Город: Почтовый код
 ○ String: Bool - Имя человека: Студент ли он
 */
var dictionaryCountryAndCapital: [String: String] = ["Ukraine": "Kyiv", "Canada": "Ottawa", "Poland": "Warsaw"]
var dictionaryCityAndPostIndex: [String: Int] = ["Kyiv": 01001, "Ottawa": 454555, "Warsaw": 34523]
var dictionaryOfStudetsBoolean: [String: Bool] = ["Bob": true, "Kate": false, "Sancho": false]

let keysForCapitals = [String](dictionaryCountryAndCapital.keys).sorted()
let keysForIndexs = [String](dictionaryCityAndPostIndex.keys).sorted()
let keyForStudentStatus = [String](dictionaryOfStudetsBoolean.keys).sorted()

/* 2 Создайте еще одну переменную типа Dictionary, в которую сохраните по
 одному элементу из каждого из словарей выше и выведите ее значение в
 консоль (На желтые warnings и “optional(...)” значение в консоли мы пока не
 обращаем внимания)
 */
var someDictionary: Dictionary<String, Any> = [:]

someDictionary[keysForCapitals[0]] = dictionaryCountryAndCapital["Canada"]
someDictionary[keysForIndexs[1]] = dictionaryCityAndPostIndex["Ottawa"]
someDictionary[keyForStudentStatus[2]] = dictionaryOfStudetsBoolean["Sancho"]

// 3 Удалите в первых трех словарях по одному элементу
dictionaryCountryAndCapital["Poland"] = nil
dictionaryCityAndPostIndex.removeValue(forKey: "Warsaw")
dictionaryOfStudetsBoolean.removeValue(forKey: "Bob")
someDictionary.values

/* 4, 5, 6 Создайте переменные:
 ○ Массив содержащий только ключи из последнего Dictionary
 ○ Массив содержащий только значения из последнего Dictionary
Выведите в консоль их значения.
Поменяйте местами значение первого и последнего ключа в этом массиве.
Не забывайте что вы всегда можете создавать дополнительные переменные.
 */
var keysArray = [String](someDictionary.keys.sorted())
var valuesArray = [Any](someDictionary.values)
var firstToLast = keysArray.first
var lastToFirst = keysArray.last
keysArray.removeFirst()
keysArray.removeLast()
keysArray.append(lastToFirst!)
keysArray.insert(firstToLast!, at: 0)
keysArray[0]
keysArray[2]
