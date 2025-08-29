
/// The Link object represents a possible design-time link for a response.
/// The presence of a link does not guarantee the caller’s ability to successfully invoke it, rather it provides a known relationship and traversal mechanism between responses and other operations.
/// 
/// Unlike _dynamic_ links (i.e. links provided in the response payload), the OAS linking mechanism does not require link information in the runtime response.
/// 
/// For computing links, and providing instructions to execute them, a [runtime expression](https://spec.openapis.org/oas/v3.1.0#runtime-expressions) is used for accessing values in an operation and using them as parameters while invoking the linked operation.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
///
/// A linked operation _MUST_ be identified using either an `operationRef` or `operationId`.
/// In the case of an `operationId`, it _MUST_ be unique and resolved in the scope of the OAS document.
/// Because of the potential for name clashes, the `operationRef` syntax is preferred for OpenAPI documents with external references.
/// 
/// https://spec.openapis.org/oas/v3.1.0#link-object
public protocol LinkObjectProtocol: AnyLinkObjectProtocol, ~Copyable {
    associatedtype ServerObject:ServerObjectProtocol

    /// A server object to be used by the target operation.
    var server: ServerObject? { get }
}