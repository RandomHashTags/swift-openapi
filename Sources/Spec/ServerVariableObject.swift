
import Blueprint

public struct ServerVariableObject: Codable, ServerVariableObjectProtocol {
    public var `enum`:[String]?
    public var `default`:String
    public var description:String?

    public init(
        enum: [String]? = nil,
        default: String,
        description: String? = nil
    ) {
        self.enum = `enum`
        self.default = `default`
        self.description = description
    }
}