import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]
let arrayPics = ["Alias", "Alien", "BasicInstinct", "Aliens", "AmazingStories", "BoysFromBrazil", "AmericanTail"]

let newArray = array.map { $0 }
let newArrayD = array.map { Double($0) }
let newArrayMas1 = array.map { $0 + 1 }
newArrayMas1

let newArrayS = array.map { "\($0)€" }
newArrayS

let arrayPictures = arrayPics.map { name in
    UIImage(named: "\(name).jpg")
}

let arrayPictures1 = arrayPics.map { name -> UIImage? in
    if let imagen = UIImage(named: "\(name).jpg") {
        return imagen
    } else {
        return nil
    }
}

let array0 = array.map { num -> Int in
    if num < 5 {
        return 0
    } else {
        return num
    }
}

