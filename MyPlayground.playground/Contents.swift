import UIKit

var greeting = "Hello, playground"
let max:Int  = 10
var min:Int = 0
min = -10

var welcomeMessage:String
welcomeMessage = "Hello"
min = 10
var maxD:Double = 10.0003

let three: Int = 3
let point: Double = 0.14159
let pi: Double = Double(three) + point
print(pi)

//Optional type - используется в тех случаях, когда значение отсутствует
// 1 способо распаковки optional type
var g: Int = 129
var s: String? = "World"//либо содержит значение,либо нет(optional type)
print(s!)// ! - принудительная распаковка опционального типа, если не присвоен nil(пустота)
//s = nil ничего не хранится в переменной (nil = null(C++))

if s != nil {
    print(s!)
}
else {
    print("s = nil")
}
// 2 способ
if let a = s {
    print(a)
}// let не может быть равно nil
else {
    print("s = nil")
}
// 3 способ
let defaultLunch = "pizza"
var specialLunch: String?
var myLunch = specialLunch ?? defaultLunch
print (myLunch)
// ?? - опциональное связывание

specialLunch = "пирог"
myLunch = specialLunch ?? defaultLunch
print(myLunch)

// Коллекции в Swift - это основные типы,в которых мы можем хранить данные,вычислять и т.д.
// массив
var newArray: [String] = ["One","Two","Three"]
print(newArray[1])
//.append - добавляет новый элемент в конец
newArray.append("Four")
print(newArray[3])
//.insert - добавялет в определенный индекс с помощью at:{номер индекса}
newArray.insert("2,5",at:2)
print(newArray)
//.removeLast - удаляет последний элемент массива

newArray.removeLast()
print(newArray)
//.remove - удаляет элемент в определенной индексе
newArray.remove(at:0)
print(newArray)

//Словарь - хранится все в хаотичном порядке и содержится в паре ключ-значение

var countries = ["IT":"Италия","RU":"Россия","FR":"Франция"]

let fractions = [0.25 : "1/4",0.5: "1/2"]
// ключи должны иметь один тип данных, и значения должны иметь один и тот же тип данных

print(countries["IT"]!)
// ключи хранятся в опциональном типе данных

if let bigCountry = countries["RU"]{
    print(bigCountry)
}
else {
    print("ERROR key")
}
// добавление в словарь: если есть ключ,то будет замена значения;если нет ключа,то будет создан новый ключ-значение
countries["AU"]="Австрия"
print(countries)

countries["IT"] = nil
countries["AU"] = "Австрия"
print(countries)
// contains - метод, который проверяет значения/ключи(для проверки ключа нужно убрать keys
print(countries.keys.contains("IT"))



if countries.keys.contains("RUS") == false
{
    print("Такого ключа нет")
}
else {
    print ("Ключ есть")
}

//Множество
// Set - метод; множество<тип данных>,хранятся только уникальные значения.Можем только проверять:содержится ли элемент в множестве или нет?
var favGenres: Set<String> = ["Rock","Classical","Hip-hop","Rock"]
print(favGenres)
// .contains - метод; содержится ли элемент в множестве
if favGenres.contains("Rock")
{
    print ("РОК!!!")
}
else {
    print("НЕТ")
}

