import UIKit

let arrayPics = ["Alias", "Alien", "BasicInstinct", "Aliens", "AmazingStories", "BoysFromBrazil", "AmericanTail"]

let newImages = arrayPics.compactMap { image in
    UIImage(named: "\(image).jpg")
}

let resultFirst = newImages.first { $0.size.width == 200 }
resultFirst

let resultLast = newImages.last { image in
    image.size.width == 200
}
resultLast

