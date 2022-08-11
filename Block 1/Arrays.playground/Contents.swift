import UIKit

//Arrays

/* 1, 2 Создайте массив включающий имена 5 студентов.
Создайте переменные newStudent1, newStudent2 и задайте им имена */
var studentsArray = ["Bob", "Kayle", "Shon", "Peter", "Marry"]
var newStudent1 = "Garry"
var newStudent2 = "Artem"

/* 3, 4 Добавьте новых студентов в массив: первого в конец списка, второго в начало списка.
 После этого никаких операций с newStudent1 и newStudent2 не требуется, продолжаем работу с массивами.
 Удалите двоих студентов из массива: предпоследнего и первого */
studentsArray.append(newStudent1)
studentsArray.insert(newStudent2, at: 0)
studentsArray.remove(at: 5)
studentsArray.removeFirst()

/* 5,6 Создайте еще один массив с двумя именами.
 Создайте массив group, который состоит из двух предыдущих массивов */
var newArray = ["Sabina", "Darina"]
var group = studentsArray + newArray

/* 7, 8 Через команду print() выведите имена студентов:
  ○ первого и последнего
  ○ второго и третьего
 Выведите в консоль сообщения:
  ○ В массиве содержится *** элементов
  ○ Является ли массив пустым: *** (выведите bool значение)
 */
print(group.first!, group.last!, group[1], group[2])
group.count
group.isEmpty

/* 9, 10 Создайте массив “newGroup”, который содержит всех учеников из group.
 Очистите массив group */
var newGroup = group
group.removeAll()
