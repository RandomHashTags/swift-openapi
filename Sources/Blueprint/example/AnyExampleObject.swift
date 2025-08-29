
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// In all cases, the example value is expected to be compatible with the type schema of its associated value.
/// Tooling implementations _MAY_ choose to validate compatibility automatically, and reject the example value(s) if incompatible.
/// 
/// https://spec.openapis.org/oas/v3.1.0#example-object
public protocol AnyExampleObject: Sendable {
    /// Short description for the example.
    var summary: String? { get }

    /// Long description for the example. [CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark) syntax _MAY_ be used for rich text representation.
    var description: String? { get }

    /// A URI that points to the literal example. This provides the capability to reference examples that cannot easily be included in JSON or YAML documents. The `value` field and `externalValue` field are mutually exclusive. See the rules for resolving [Relative References](https://spec.openapis.org/oas/v3.1.0#relative-references-in-uris).
    var externalValue: String? { get }
}