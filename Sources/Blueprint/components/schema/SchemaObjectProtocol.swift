
/// The Schema Object allows the definition of input and output data types.
/// These types can be objects, but also primitives and arrays.
/// This object is a superset of the [JSON Schema Specification Draft 2020-12](https://spec.openapis.org/oas/v3.1.0#bib-json-schema-2020-12).
/// 
/// For more information about the properties, see [JSON Schema Core](https://spec.openapis.org/oas/v3.1.0#bib-json-schema-2020-12) and [JSON Schema Validation](https://spec.openapis.org/oas/v3.1.0#bib-json-schema-validation-2020-12).
/// 
/// Unless stated otherwise, the property definitions follow those of JSON Schema and do not add any additional semantics.
/// Where JSON Schema indicates that behavior is defined by the application (e.g. for annotations), OAS also defers the definition of semantics to the application consuming the OpenAPI document.
/// 
/// ## Properties
/// The OpenAPI Schema Object [dialect](https://tools.ietf.org/html/draft-bhutton-json-schema-00#section-4.3.3) is defined as requiring the [OAS base vocabulary](https://spec.openapis.org/oas/v3.1.0#fixed-fields-20), in addition to the vocabularies as specified in the JSON Schema draft 2020-12 [general purpose meta-schema](https://tools.ietf.org/html/draft-bhutton-json-schema-00#section-8).
/// 
/// The OpenAPI Schema Object dialect for this version of the specification is identified by the URI `https://spec.openapis.org/oas/3.1/dialect/base` (the “OAS dialect schema id”).
/// 
/// The following properties are taken from the JSON Schema specification but their definitions have been extended by the OAS:
/// - description - [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
/// - format - See [Data Type Formats](https://spec.openapis.org/oas/v3.1.0#dataTypeFormat) for further details. While relying on JSON Schema’s defined formats, the OAS offers a few additional predefined formats.
/// 
/// In addition to the JSON Schema properties comprising the OAS dialect, the Schema Object supports keywords from any other vocabularies, or entirely arbitrary properties.
/// 
/// https://spec.openapis.org/oas/v3.1.0#schema-object
public protocol SchemaObjectProtocol: Sendable, ~Copyable {
    associatedtype Discriminator:DiscriminatorObjectProtocol
    associatedtype XMLObject:XMLObjectProtocol
    associatedtype ExternalDocumentation:ExternalDocumentationObjectProtocol

    /// Adds support for polymorphism.
    /// The discriminator is an object name that is used to differentiate between other schemas which may satisfy the payload description.
    /// See [Composition and Inheritance](https://spec.openapis.org/oas/v3.1.0#composition-and-inheritance-polymorphism) for more details.
    var discriminator: Discriminator? { get }

    /// This _MAY_ be used only on properties schemas.
    /// It has no effect on root schemas.
    /// Adds additional metadata to describe the XML representation of this property.
    var xml: XMLObject? { get }

    /// Additional external documentation for this schema.
    var externalDocs: ExternalDocumentation? { get }

    /// A free-form property to include an example of an instance for this schema.
    /// To represent examples that cannot be naturally represented in JSON or YAML, a string value can be used to contain the example with escaping where necessary.
    /// 
    /// **Deprecated**: The `example` property has been deprecated in favor of the JSON Schema `examples` keyword. Use of `example` is discouraged, and later versions of this specification may remove it.
    var example: Any? { get } // TODO: fix?
}