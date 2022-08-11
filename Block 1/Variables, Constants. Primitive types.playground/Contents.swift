import UIKit

//  Variables, Constants. Primitive types

/* 1 Создайте переменные или константы, в которых можно хранить: ваш
возраст, название вашей должности, информацию о том дома вы или нет */

let name = "Artem"
var age = 23
var atHome = true
var student = "student"
let senior = "Senior-"

/* 2 Измените значения:
 ○ возраст - добавить год
 ○ название профессии - добавить перед названием слово “Senior”
 ○ замените свой статус на противоположный
 */
age += 1
student = senior + student
atHome.toggle()

/* 3 Выведите в консоль все данные, встроив их в предложение: “Мне *** лет,
 и я работаю на должности ***” */
print("My name is \(name). I am \(age) years old and now my status is \(student).")
