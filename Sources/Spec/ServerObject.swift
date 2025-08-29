
public struct ServerObject: Codable, Sendable {
    public var url:String
    public var description:String?
    public var variables:[String:ServerVariableObject]?
}