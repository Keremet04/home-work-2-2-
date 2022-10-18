
class Human{

    var name: String = ""
    var surname: String = ""
    var age: Int = 0

    init(name: String, surname: String, age: Int){

        self.name = name
        self.surname = surname
       self.age = age
    }
//
//    func Information(){
//        print("\(name) - \(surname) - \(age)")
//           }
       }


class Employee : Human{

   var company: String = ""
    init(name: String, surname: String, age: Int, company: String){

       self.company = company
        super.init(name: name, surname: surname, age: age)
   }

    func Info(){
        print(" 1) Employee name is: \(name) -  Surname is: \(surname) -  Age: \(age) - Company: \(company)")
    }

}

var person: Employee = Employee(name: "Azamat", surname: "Azamatov", age: 25, company:"Optima bank")
var emplInfo = person.Info()


//
class Investor: Employee{

    var investments: Int = 0
    init(name: String, surname: String, age: Int, company: String, investments: Int){

        self.investments = investments
        super.init(name: name, surname: surname, age: age, company: company)

        }
        func fullinfo(){
            print(" 2) Investor name is : \(name) \(surname) -  Age: \(age) -  Invested company: \(company) -  Number of investments is:  \(investments)")

        }
}

var person2: Investor = Investor(name: "Ilon", surname: "Mask", age: 32, company: "Tesla", investments: 234469)
    var inv = person2.fullinfo()



//
//#2. Создать класс Магазин
//Параметры: Название, Площадь, Расположение, Часы работы
//После чего путём наследования создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//
//Так же в конце должна быть функция, которая будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//
//Наименование товара. Кол-во товара. Цена товара


class Shop{
    var name: String = ""
    var square: Int = 0
    var location: String = ""
    var timetable: String = ""
    
    init(name: String, square: Int, location: String, timetable: String){
        
        
        self.name = name
        self.square = square
        self.location = location
        self.timetable = timetable
    }
}

class Clothes: Shop{
    
    var workersnumber: Int = 0
    var newproductscoming: String = ""
    
    init(name: String, square: Int, location: String, timetable: String, workersnumber: Int, newproductscoming: String ){
         
        
        self.workersnumber = workersnumber
        self.newproductscoming = newproductscoming
        super.init(name: name, square: square, location: location, timetable: timetable)
        
    }
    
    func clothesInfo(){
        print(" Shope: \(name) - Square: \(square) -  Address: \(location) - Work time: \(timetable) - Number of workers: \(workersnumber) - New colection: \(newproductscoming)")
    }
    
}

var shop: Clothes = Clothes(name: "Zara", square: 1400, location: "city center", timetable: "Every day at 10:00 - 22:00", workersnumber: 50, newproductscoming: "Every Sunday")
var shop1 = shop.clothesInfo()


class Auto: Shop{
    
    var cars: String = ""
    var carcost: String = ""
    
    init(name: String, square: Int, location: String, timetable: String, cars: String, carcost: String){
        
        self.cars = cars
        self.carcost = carcost
        super.init(name: name, square: square, location: location, timetable: timetable )
        
    }
    
    func carsInfo(){
        print(" Store: \(name) - Square: \(square) - Address: \(location) - Timetable: \(timetable) - Car types: \(cars) - Cost: \(carcost)")
    
    }
}

var store: Auto = Auto(name: "BMW Store", square: 2450, location: "12 micro-district", timetable: "Every day at 12:00 - 20:00,  accept Monday", cars: "All BMW car types", carcost: "Cost of cars starts from 4000$ - 100.000$")
var shop2 = store.carsInfo()

