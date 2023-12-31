var action: String? = "/"
var operation1: Int? = 143
var operation2: Int? = 0 

func add(a: Int, b: Int) -> Int {
    return a + b
}

func subtract(a: Int, b: Int) -> Int {
    return a - b
}

func multiply(a: Int, b: Int) -> Int {
    return a * b
}

func divide(a: Int, b: Int) -> Int? { 
    guard b != 0 else {
        print("Error: Division by zero")
        return nil 
    }
    return a / b
}

if let myAction = action, let op1 = operation1, let op2 = operation2 {
    switch myAction {
    case "+":
        let result = add(a: op1, b: op2)
        print("Result: \(result)")
    case "-":
        let result = subtract(a: op1, b: op2)
        print("Result: \(result)")
    case "*":
        let result = multiply(a: op1, b: op2)
        print("Result: \(result)")
    case "/":
        if let result = divide(a: op1, b: op2) {
            print("Result: \(result)")
        }
    default:
        fatalError("Unsupported")
    }
} else {
    print("One or both of the operand variables have nil values")
}
