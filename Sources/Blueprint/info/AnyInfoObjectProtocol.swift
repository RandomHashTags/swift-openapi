
/// The object provides metadata about the API.
/// The metadata _MAY_ be used by the clients if needed, and _MAY_ be presented in editing or documentation generation tools for convenience.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#info-object
public protocol AnyInfoObjectProtocol: Sendable, ~Copyable {
    /// The title of the API.
    var title: String { get }

    /// A short summary of the API.
    var summary: String? { get }

    /// A description of the API.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }

    /// A URL to the Terms of Service for the API.
    /// This _MUST_ be in the form of a URL.
    var termsOfService: String? { get }

    /// The version of the OpenAPI document (which is distinct from the [OpenAPI Specification version](https://spec.openapis.org/oas/v3.1.0#oasVersion) or the API implementation version).
    var version: String { get }
}