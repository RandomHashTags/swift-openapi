
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
public protocol AnyLinkObjectProtocol: Sendable, ~Copyable {

    /// A relative or absolute URI reference to an OAS operation.
    /// This field is mutually exclusive of the `operationId` field, and _MUST_ point to an [Operation Object](https://spec.openapis.org/oas/v3.1.0#operation-object).
    /// Relative operationRef values _MAY_ be used to locate an existing [Operation Object](https://spec.openapis.org/oas/v3.1.0#operation-object) in the OpenAPI definition.
    /// See the rules for resolving [Relative References](https://spec.openapis.org/oas/v3.1.0#relative-references-in-uris).
    var operationRef: String? { get }

    /// The name of an existing, resolvable OAS operation, as defined with a unique `operationId`.
    /// This field is mutually exclusive of the `operationRef` field.
    var operationId: String? { get }

    /// A map representing parameters to pass to an operation as specified with `operationId` or identified via `operationRef`.
    /// The key is the parameter name to be used, whereas the value can be a constant or an expression to be evaluated and passed to the linked operation.
    /// The parameter name can be qualified using the [parameter location](https://spec.openapis.org/oas/v3.1.0#parameterIn) `[{in}.]{name}` for operations that use the same parameter name in different locations (e.g. [path.id](http://path.id/)).
    var parameters: [String:Any]? { get } // TODO: fix?

    /// A literal value or [{expression}](https://spec.openapis.org/oas/v3.1.0#runtime-expressions) to use as a request body when calling the target operation.
    var requestBody: Any? { get } // TODO: fix?

    /// A description of the link.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }
}