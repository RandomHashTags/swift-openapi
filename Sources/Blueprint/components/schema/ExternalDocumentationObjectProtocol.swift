
/// Allows referencing an external resource for extended documentation.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#external-documentation-object
public protocol ExternalDocumentationObjectProtocol: Sendable, ~Copyable {
    /// A description of the target documentation.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }

    /// The URL for the target documentation.
    /// This _MUST_ be in the form of a URL.
    var url: String { get }
}