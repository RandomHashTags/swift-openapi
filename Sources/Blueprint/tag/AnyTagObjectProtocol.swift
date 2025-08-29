
/// Adds metadata to a single tag that is used by the [Operation Object](https://spec.openapis.org/oas/v3.1.0#operation-object).
/// It is not mandatory to have a Tag Object per tag defined in the Operation Object instances.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#tag-object
public protocol AnyTagObjectProtocol: Sendable, ~Copyable {
    /// The name of the tag.
    var name: String { get }

    /// A description for the tag. [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }
}