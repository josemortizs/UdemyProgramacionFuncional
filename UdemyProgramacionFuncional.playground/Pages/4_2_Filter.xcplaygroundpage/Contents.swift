import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

let arrayPics = ["Alias", "Alien", "BasicInstinct", "Aliens", "AmazingStories", "BoysFromBrazil", "AmericanTail"]

let newImages = arrayPics.map { UIImage(named: "\($0).jpg") }
newImages

let arrayFiltrado = array.filter { $0 <= 5 }
arrayFiltrado

let arrayPic100 = newImages.filter { $0?.size.width == 100 }
arrayPic100
