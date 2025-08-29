
import Blueprint

public struct ServerObject: Codable, ServerObjectProtocol {
    public var url:String
    public var description:String?
    public var variables:[String:ServerVariableObject]?

    public init(
        url: String,
        description: String? = nil,
        variables: [String:ServerVariableObject]? = nil
    ) {
        self.url = url
        self.description = description
        self.variables = variables
    }
}