import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

let arrayPics = ["Alias", "Alien", "BasicInstinct", "Aliens", "AmazingStories", "BoysFromBrazil", "AmericanTail"]

let newImages = arrayPics.map { UIImage(named: "\($0).jpg") }

let result1 = array.allSatisfy {
    $0 < 10
}
result1

let result2 = newImages.allSatisfy { img in
    img?.size.width == 100
}
result2
