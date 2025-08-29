
/// When request bodies or response payloads may be one of a number of different schemas, a `discriminator` object can be used to aid in serialization, deserialization, and validation.
/// The discriminator is a specific object in a schema which is used to inform the consumer of the document of an alternative schema based on the value associated with it.
/// 
/// When using the discriminator, _inline_ schemas will not be considered.
/// 
/// This object _MAY_ be extended with Specification Extensions.
/// 
/// The discriminator object is legal only when using one of the composite keywords `oneOf`, `anyOf`, `allOf`.
///
/// https://spec.openapis.org/oas/v3.1.0#discriminator-object
public protocol DiscriminatorObjectProtocol: Sendable, ~Copyable {
    /// The name of the property in the payload that will hold the discriminator value.
    var propertyName: String { get }

    /// An object to hold mappings between payload values and schema names or references.
    var mapping: [String:String]? { get }
}