
/// Describes a single API operation on a path.
/// 
/// This object MAY be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#operation-object
public protocol AnyOperationObjectProtocol: Sendable, ~Copyable {

    /// A list of tags for API documentation control.
    /// Tags can be used for logical grouping of operations by resources or any other qualifier.
    var tags: [String]? { get }

    /// A short summary of what the operation does.
    var summary: String? { get }

    /// A verbose explanation of the operation behavior.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }

    /// Unique string used to identify the operation.
    /// The id _MUST_ be unique among all operations described in the API.
    /// The operationId value is **case-sensitive**.
    /// Tools and libraries _MAY_ use the operationId to uniquely identify an operation, therefore, it is _RECOMMENDED_ to follow common programming naming conventions.
    var operationId: String? { get }

    /// Declares this operation to be deprecated.
    /// Consumers _SHOULD_ refrain from usage of the declared operation.
    /// Default value is `false`.
    var deprecated: Bool { get }
}

extension AnyOperationObjectProtocol {
    @inlinable
    public var deprecated: Bool {
        false
    }
}