import UIKit

struct FIFOStack<T> {
    
    private var storage: [T] = []
    
    mutating func addValue(value: T) {
        storage.insert(value, at: 0)
    }
    
    mutating func extractValue() -> T {
        storage.removeLast()
    }
}

var fifo1 = FIFOStack<Int>()
fifo1.addValue(value: 4)
fifo1.addValue(value: 5)
fifo1.addValue(value: 6)
fifo1.extractValue()
fifo1.extractValue()

@propertyWrapper
class FIFOStackClass<T> {
    
    private var storage:[T] = []
    
    var wrappedValue: T {
        get {
            storage.removeLast()
        }
        set {
            storage.insert(newValue, at: 0)
        }
    }
    
}

struct FIFOApp {
    
    @FIFOStackClass private var stack: Int
    @FIFOStackClass private var stackString: String
    
    func addValueInt(value: Int) {
        stack = value
    }
    
    func extractInt() {
        stack
    }
}

var fifo2 = FIFOApp()

fifo2.addValueInt(value: 4)
fifo2.addValueInt(value: 5)
fifo2.addValueInt(value: 6)
fifo2.extractInt()
fifo2.extractInt()
