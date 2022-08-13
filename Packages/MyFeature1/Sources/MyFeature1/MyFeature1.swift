
public struct MyFeature1 {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func doSomethig() {
        somethingDoingSecretely()
    }
    
    private func somethingDoingSecretely() {
        InternalSomeOtherStruct().testing()
    }
}

struct InternalSomeOtherStruct {
    var testVariable: String?
    init() {
    }
    
    func testing() {
        let _ = testVariable!
    }
}
