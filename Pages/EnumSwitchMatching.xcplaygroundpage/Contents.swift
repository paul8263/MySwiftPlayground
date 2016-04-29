enum E {
    case A(num: Int)
    case B(name: String)
}

extension E {
    func isNamedPaul() -> Bool {
        switch self {
        case .B(name: "Paul"): return true
        default: return false
        }
    }
    
    func isLargerThanTen() -> Bool {
        switch self {
        case let .A(num: aNum):
            if aNum > 10 {
                return true
            } else {
                return false
            }
        default: return false
        }
    }
}

let e1: E = .A(num: 50)
e1.isLargerThanTen()
e1.isNamedPaul()
let e2: E = .B(name: "Paul")
e2.isNamedPaul()