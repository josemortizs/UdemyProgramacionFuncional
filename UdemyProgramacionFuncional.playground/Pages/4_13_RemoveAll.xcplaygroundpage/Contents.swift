import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

let arrayPics = ["Alias", "Alien", "BasicInstinct", "Aliens", "AmazingStories", "BoysFromBrazil", "AmericanTail"]

var newImages = arrayPics.compactMap { UIImage(named: "\($0).jpg") }
newImages

newImages.removeAll { img in
    img.size.width == 200
}

newImages
