
import Blueprint

// https://spec.openapis.org/oas/v3.1.0#xml-object
public struct XMLObject: Codable, XMLObjectProtocol {
    public var name:String?
    public var namespace:String?
    public var prefix:String?

    public init(
        name: String? = nil,
        namespace: String? = nil,
        prefix: String? = nil
    ) {
        self.name = name
        self.namespace = namespace
        self.prefix = prefix
    }
}