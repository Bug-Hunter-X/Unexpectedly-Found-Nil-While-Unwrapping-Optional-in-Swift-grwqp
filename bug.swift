let numbers = [1, 2, 3, 4, 5]

let doubledNumbers = numbers.map { $0 * 2 }

print(doubledNumbers) // Output: [2, 4, 6, 8, 10]

//Error: Unexpectedly found nil while unwrapping an Optional value

func getDoubledNumbers(numbers: [Int]?) -> [Int]? {
    guard let numbers = numbers else {
        return nil
    }
    return numbers.map { $0 * 2 }
}

let optionalNumbers: [Int]? = [1,2,3]
let doubledOptionalNumbers = getDoubledNumbers(numbers: optionalNumbers)
print(doubledOptionalNumbers ?? []) // Output: [2, 4, 6]

let nilOptionalNumbers: [Int]? = nil
let doubledNilOptionalNumbers = getDoubledNumbers(numbers: nilOptionalNumbers)
print(doubledNilOptionalNumbers ?? []) // Output: []

//Another error:
//Unexpectedly found nil while unwrapping an Optional value

func getDoubledNumbers2(numbers: [Int]?) -> [Int] {
    return numbers!.map { $0 * 2 }
}

let optionalNumbers2: [Int]? = [1,2,3]
let doubledOptionalNumbers2 = getDoubledNumbers2(numbers: optionalNumbers2)
print(doubledOptionalNumbers2) // Output: [2, 4, 6]

let nilOptionalNumbers2: [Int]? = nil
let doubledNilOptionalNumbers2 = getDoubledNumbers2(numbers: nilOptionalNumbers2)// Error