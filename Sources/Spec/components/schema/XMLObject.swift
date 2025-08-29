
import Blueprint

// https://spec.openapis.org/oas/v3.1.0#xml-object
public struct XMLObject: Codable, XMLObjectProtocol {
    public var name:String?
    public var namespace:String?
    public var prefix:String?
}