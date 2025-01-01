func getDoubledNumbersSafe(numbers: [Int]?) -> [Int] {
    // Use the nil-coalescing operator to provide a default empty array if numbers is nil
    return (numbers ?? []).map { $0 * 2 }
}

let optionalNumbersSafe: [Int]? = [1, 2, 3]
let doubledOptionalNumbersSafe = getDoubledNumbersSafe(numbers: optionalNumbersSafe)
print(doubledOptionalNumbersSafe) // Output: [2, 4, 6]

let nilOptionalNumbersSafe: [Int]? = nil
let doubledNilOptionalNumbersSafe = getDoubledNumbersSafe(numbers: nilOptionalNumbersSafe)
print(doubledNilOptionalNumbersSafe) // Output: []

//Alternative solution using optional chaining
func getDoubledNumbersOptionalChaining(numbers: [Int]?) -> [Int]? {
    return numbers?.map { $0 * 2 }
}

let optionalNumbersOptionalChaining: [Int]? = [1, 2, 3]
let doubledOptionalNumbersOptionalChaining = getDoubledNumbersOptionalChaining(numbers: optionalNumbersOptionalChaining)
print(doubledOptionalNumbersOptionalChaining ?? []) // Output: [2, 4, 6]

let nilOptionalNumbersOptionalChaining: [Int]? = nil
let doubledNilOptionalNumbersOptionalChaining = getDoubledNumbersOptionalChaining(numbers: nilOptionalNumbersOptionalChaining)
print(doubledNilOptionalNumbersOptionalChaining ?? []) // Output: []