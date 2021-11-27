import UIKit

struct Empleados: Codable {
    let id: Int
    let username:String
    let first_name:String
    let last_name: String
    let gender: String
    let email: String
    let department: String
    let address: String
    let avatar: String
    let zipcode: String?
}

let imagenURL = URL(string: "https://i.blogs.es/d684a7/33258329033_159ddc3b1b_o/500_333.jpg")!
let jsonURL = URL(string: "https://applecoding.com/testData/EmpleadosData.json")!

func getNetwork<T>(url:URL, builder: @escaping (Data) -> T?, callback: @escaping (T) -> Void) {
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, let response = response as? HTTPURLResponse, error == nil else {
            return
        }
        if response.statusCode == 200 {
            if let builded = builder(data) {
                callback(builded)
            }
        } else {
            print("Error \(response.statusCode)")
        }
    }.resume()
}

getNetwork(url: imagenURL) {
    UIImage(data: $0)
} callback: {
    print($0)
    $0
}

getNetwork(url: jsonURL) { data in
    try? JSONDecoder().decode([Empleados].self, from: data)
} callback: { empleados in
    print(empleados.first!)
}

