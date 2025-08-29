
import Blueprint

// https://spec.openapis.org/oas/v3.1.0#schema-object
public struct SchemaObject: Codable, SchemaObjectProtocol {
    public var discriminator:DiscriminatorObject?
    public var xml:XMLObject?
    public var externalDocs:ExternalDocumentationObject?
    //public var example:Any?
}