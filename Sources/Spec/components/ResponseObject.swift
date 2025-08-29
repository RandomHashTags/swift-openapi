
import Blueprint

public struct ResponseObject: Codable, Sendable {
    public var description:String
    public var headers:[String:HeaderObject]?
    public var content:[String:String]?
    public var links:[String:String]?
}