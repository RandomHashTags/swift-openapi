
/// Describes a single request body.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#request-body-object
public protocol AnyRequestBodyObjectProtocol: Sendable, ~Copyable {

    /// A brief description of the request body.
    /// This could contain examples of use.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }

    /// Determines if the request body is required in the request.
    /// Defaults to `false`.
    var required: Bool { get }
}

extension AnyRequestBodyObjectProtocol {
    @inlinable
    public var required: Bool {
        false
    }
}