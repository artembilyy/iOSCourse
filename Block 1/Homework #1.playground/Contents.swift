import UIKit

//Homework

/* 1-3 Создайте массив с десятью случайными числами, из которых пять меньше
 нуля и пять больше нуля
 1. Замените все отрицательные числа на 0 и выведите массив в консоль
 2. Найдите минимальный и максимальный элемент в массиве и выведите его в консоль
 3. Найдите сумму элементов массива чисел и выведите ее в консоль
 */
var randomNumbers: [Int] = []
for _ in 1...5 {
    randomNumbers.append(Int.random(in: 0...100))
}
for _ in 1...5 {
    randomNumbers.append(Int.random(in: -100...0))
}

for (index, number) in randomNumbers.enumerated() where number < 0 {
    randomNumbers[index] = 0
}

func selectMaxAndMin(array: [Int]) -> (Int, Int) {
    var maxValue = array[0]
    var minValue = array[0]
    for (index, _) in array.enumerated() {
        if array[index] >= maxValue {
            maxValue = array[index]
        } else {
            minValue = array[index]
        }
    }
    return (maxValue, minValue)
}
selectMaxAndMin(array: randomNumbers)

func sumOfArray(array: [Int]) -> Int {
    var sum = 0
    for numbers in randomNumbers {
        sum += numbers
    }
    return sum
}
sumOfArray(array: randomNumbers)

/* 4. Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и
 с помощью цикла задайте ему значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений - элементы массива. */

var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var monthDictionary: [Int: String] = [:]

var counter = 0
for month in months {
    counter += 1
    monthDictionary[counter] = month
}
monthDictionary[1]
monthDictionary[12]

/*  5. Создайте словарь:
 var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
 Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь
 */

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

let cloudValue1 = dictionary["first"]
dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = cloudValue1
print(dictionary)

/* 6-7
 6. Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из четвертого задания.
 С помощью цикла от 1970 до 2022 задайте значения для словаря. В
 качестве ключа пусть будет год, а значение это массив с месяцами.
 7. С помощью другого цикла добавьте в calendar на каждый год по
 одному месяцу с вашим названием, чтобы в каждом году вышло 13 месяцев.
 */

var calendar: [Int: [String]] = [:]
for i in 1970...2022 {
    calendar[i] = months
}

var myMonths = "Hubble"
for years in 1970...2022 {
    calendar[years]?.append(myMonths)
}

/* 7.1 На основании словаря, который у вас получился в седьмом задании,
 давайте создадим новый словарь, который будет включать в себя также и даты,
 a именно массив с числами от 1 до 31:
 
 ● Создайте массив с числами от 1 до 31 с помощью цикла.
 ● Создайте новый словарь calendarPro, где в качестве ключей будут года, в
 качестве значений вложенные словари. В которых в качестве ключей названия
 месяцев, а в качестве значений массив с днями созданный выше.
 ● Выведите в консоль 1 сентября 2019 года.
 
 PS: Для заполнения calendarPro используйте только созданный массив с
 числами, и словарь с месяцами, и никаких других данных
 */
var calendarPro: [Int: [String: [Int]]] = [:]
var simpleCalendar: [String: [Int]] = [:]

var daysOfMonth = [Int]()
var dayNum = 0
for _ in 1...31 {
    dayNum += 1
    daysOfMonth.append(dayNum)
}
for month in months {
    simpleCalendar[month] = daysOfMonth
}
for year in 1991...2022 {
    calendarPro[year] = simpleCalendar
}

/* 8
 Создайте 2 переменные с числами. Если значения равны, выведите в
 консоль их сумму умноженную на 3, если нет, выведите в консоль их сумму в случае если она четное число.
 */

var a = 20
var b = 34
if a == b {
    print((a + b) * 3)
} else if (a + b) % 2 == 0 {
    print(a + b)
} else {
    print("Not today")
}

/* 9
 Создайте строку, в которой будет храниться любая фраза из трех или
 более слов c восклицательным знаком в конце. Выведите в консоль первое и
 последнее слово из этой строки (без восклицательного знака).
 В этом задании необходимо найти способ доставать слова из вашей строки,
 погуглите методы с помощью которых это возможно реализовать.
 */
let myString = "Do it faster, stronger, better!"
let first = myString.components(separatedBy: " ").first
var last = myString.components(separatedBy: " ").last
last?.removeLast()
print("\(first!)" +  " it " + "\(last!)")
