
// https://spec.openapis.org/oas/v3.1.0#tag-object
public protocol TagObjectProtocol: AnyTagObjectProtocol, ~Copyable {
    associatedtype ExternalDocumentation:ExternalDocumentationObjectProtocol

    /// Additional external documentation for this tag.
    var externalDocs: ExternalDocumentation? { get }
}