
import Blueprint

// https://spec.openapis.org/oas/v3.1.0#discriminator-object
public struct DiscriminatorObject: Codable, DiscriminatorObjectProtocol {
    public var propertyName:String
    public var mapping:[String:String]?

    public init(
        propertyName: String,
        mapping: [String:String]? = nil
    ) {
        self.propertyName = propertyName
        self.mapping = mapping
    }
}