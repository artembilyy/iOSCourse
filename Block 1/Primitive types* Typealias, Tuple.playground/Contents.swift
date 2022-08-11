import UIKit

/* Primitive types*
Typealias, Tuple */

//1 Создайте переменные типов Int, String, Float и задайте в них цифровые значения
var integer: Int = 100
var string: String = "123"
var floatNumber: Float = 52.24

//2 Создайте переменную “sum” типа Double, в которой будет содержаться сумма всех предыдущих переменных. Используйте приведение типов
var sum: Double = Double(integer) + Double(string)! + Double(floatNumber)

//3 Создайте по одному Typealias, которые соответствуют типам: String, Int, Float
typealias someText = String
typealias numbers = Int
typealias numbersWithPoint = Float

/* 4,5 Создайте три именованных Tuple с данными:
○ Фильм - Название фильма и год его выпуска
○ Смартфон - Название смартфона и его цена
○ Страна - Название страны и ее столица
Все типы внутри tuple замените на typalias
 */
typealias filmName = String
typealias yearOfFilm = Int
typealias phoneName = String
typealias price = Float
typealias country = String
typealias capital = String

let myFavoriteFilm: (filmName, yearOfFilm) = ("GodFather", 1972)
let myPhone: (phoneName, price) = ("iPhone XS Max", 799.0)
let myCountry: (country, capital) = ("Ukraine", "Kyiv")

/* 6 ● Выведите с помощью команды print:
○ Название фильма, Название телефона, Название страны
○ Потом пустой print()
○ Год выпуска фильма, цена телефона, столица страны
*/
print(myFavoriteFilm.0, myPhone.0, myCountry.0)
print("\n")
print(myFavoriteFilm.1, myPhone.1, myCountry.1)
