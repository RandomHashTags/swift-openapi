
/// Describes a single response from an API Operation, including design-time, static `links` to operations based on the response.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#response-object
public protocol AnyResponseObjectProtocol: Sendable, ~Copyable {
    /// A description of the response.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String { get }
}