import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
func arrayContains<T: Hashable>(array: Array<T>, element: T) -> Bool {
    for i in array {
        if element == i {
            return true
        }
    }
    return false
}

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element: Numeric {
    
    func sumOfAll() -> Element {
        var sum =  Element.zero
        for e in self {
            sum += e
        }
        return sum
    }
}

//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
    //BONUS TODO: Fazer o método acima receber N arrays
func commonElements<T: Equatable>(arrays: Array<T>...) -> [T]? {
    var copy = arrays
    let firstArray = copy.removeFirst()
    var result = [T]()
    
    for element in firstArray {
        for array in copy {
            if !array.contains(element) {
                break
            }
            if array == arrays.last {
                result.append(element)
            }
        }
    }
    return result
}

let array1 = [0,0,2, 4, 7, 8, 9, 1, 456, 7345, 63]
let array2 = [0,4, 8, 12, 654, 36, 54]
let array3 = [0,5324, 2345, 13245, 412, 8, 342, 324, 643, 4]

commonElements(arrays: array1, array2, array3)
