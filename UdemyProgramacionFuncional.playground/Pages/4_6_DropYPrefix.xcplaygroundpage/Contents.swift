import Foundation
import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

let resultDrop = array.drop { $0 < 8}
resultDrop

let resultPrefix = array.prefix { num in
    num < 8
}
