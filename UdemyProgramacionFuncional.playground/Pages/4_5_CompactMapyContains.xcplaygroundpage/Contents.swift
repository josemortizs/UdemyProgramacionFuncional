import UIKit

let arrayPics = ["Alias", "Alien", "BasicInstinct", "Aliens", "AmazingStories", "BoysFromBrazil", "AmericanTail", "Paco"]

let newImages = arrayPics.map { UIImage(named: "\($0).jpg") }
newImages

let newImagesNotNil = arrayPics.compactMap { UIImage(named: "\($0).jpg") }
newImagesNotNil

let result = newImages.contains { image in
    image?.size.width == 200
}

result

