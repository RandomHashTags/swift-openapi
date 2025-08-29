
/// A simple object to allow referencing other components in the OpenAPI document, internally and externally.
/// 
/// The `$ref` string value contains a URI [[RFC3986](https://spec.openapis.org/oas/v3.1.0#bib-rfc3986)], which identifies the location of the value being referenced.
/// 
/// See the rules for resolving [Relative References](https://spec.openapis.org/oas/v3.1.0#relative-references-in-uris).
/// 
/// This object cannot be extended with additional properties and any properties added _SHALL_ be ignored.
/// 
/// Note that this restriction on additional properties is a difference between Reference Objects and `[Schema Objects](https://spec.openapis.org/oas/v3.1.0#schema-object)` that contain a `$ref` keyword.
/// 
/// https://spec.openapis.org/oas/v3.1.0#reference-object
public protocol ReferenceObjectProtocol: Sendable, ~Copyable {

    /// The reference identifier.
    /// This _MUST_ be in the form of a URI.
    var ref: String { get }

    /// A short summary which by default _SHOULD_ override that of the referenced component.
    /// If the referenced object-type does not allow a `summary` field, then this field has no effect.
    var summary: String? { get }

    /// A description which by default _SHOULD_ override that of the referenced component.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    /// If the referenced object-type does not allow a `description` field, then this field has no effect.
    var description: String? { get }
}