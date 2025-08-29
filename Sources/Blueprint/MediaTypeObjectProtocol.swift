
/// Each Media Type Object provides schema and examples for the media type identified by its key.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#media-type-object
public protocol MediaTypeObjectProtocol: Sendable, ~Copyable {
    associatedtype Schema:SchemaObjectProtocol
    associatedtype ExampleObject:ExampleObjectProtocol
    associatedtype EncodingObject:EncodingObjectProtocol

    /// The schema defining the content of the request, response, or parameter.
    var schema: Schema? { get }

    /// Example of the media type.
    /// The example object _SHOULD_ be in the correct format as specified by the media type.
    /// The `example` field is mutually exclusive of the `examples` field.
    /// Furthermore, if referencing a `schema` which contains an example, the `example` value _SHALL override_ the example provided by the schema.
    var example: Any? { get } // TODO: fix?

    /// Examples of the media type.
    /// Each example object _SHOULD_ match the media type and specified schema if present.
    /// The `examples` field is mutually exclusive of the `example` field.
    /// Furthermore, if referencing a `schema` which contains an example, the `examples` value _SHALL override_ the example provided by the schema.
    var examples: [String:ExampleObject]? { get }

    /// A map between a property name and its encoding information.
    /// The key, being the property name, _MUST_ exist in the schema as a property.
    /// The encoding object _SHALL_ only apply to `requestBody` objects when the media type is `multipart` or `application/x-www-form-urlencoded`.
    var encoding: [String:EncodingObject]? { get }
}