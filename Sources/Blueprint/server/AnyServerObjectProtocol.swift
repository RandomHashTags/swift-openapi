
/// An object representing a Server.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#server-object
public protocol AnyServerObjectProtocol: Sendable, ~Copyable {
    /// A URL to the target host.
    /// This URL supports Server Variables and _MAY_ be relative, to indicate that the host location is relative to the location where the OpenAPI document is being served.
    /// Variable substitutions will be made when a variable is named in {brackets}.
    var url: String { get }

    /// An optional string describing the host designated by the URL.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }
}