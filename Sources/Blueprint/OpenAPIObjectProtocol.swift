
/// This is the root object of the OpenAPI document.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#openapi-object
public protocol OpenAPIObjectProtocol: AnyOpenAPIObjectProtocol, ~Copyable {
    associatedtype InfoObject:InfoObjectProtocol
    associatedtype ServerObject:ServerObjectProtocol
    associatedtype PathsObject
    associatedtype PathItemObject:PathItemObjectProtocol
    associatedtype ComponentsObject:ComponentsObjectProtocol
    associatedtype SecurityRequirementObject
    associatedtype TagObject:TagObjectProtocol
    associatedtype ExternalDocumentationObject:ExternalDocumentationObjectProtocol

    /// Provides metadata about the API.
    /// The metadata _MAY_ be used by tooling as required.
    var info: InfoObject { get }

    /// An array of Server Objects, which provide connectivity information to a target server.
    /// If the `servers` property is not provided, or is an empty array, the default value would be a [Server Object](https://spec.openapis.org/oas/v3.1.0#server-object) with a [url](https://spec.openapis.org/oas/v3.1.0#serverUrl) value of `/`.
    var servers: [ServerObject]? { get }

    /// The available paths and operations for the API.
    var paths: PathsObject? { get }

    /// The incoming webhooks that _MAY_ be received as part of this API and that the API consumer _MAY_ choose to implement.
    /// Closely related to the `callbacks` feature, this section describes requests initiated other than by an API call, for example by an out of band registration.
    /// The key name is a unique string to refer to each webhook, while the (optionally referenced) Path Item Object describes a request that may be initiated by the API provider and the expected responses.
    /// An [example](https://learn.openapis.org/examples/v3.1/webhook-example.html) is available.
    var webhooks: [String:PathItemObject]? { get }

    /// An element to hold various schemas for the document.
    var components: ComponentsObject? { get }

    /// A declaration of which security mechanisms can be used across the API.
    /// The list of values includes alternative security requirement objects that can be used.
    /// Only one of the security requirement objects need to be satisfied to authorize a request.
    /// Individual operations can override this definition.
    /// To make security optional, an empty security requirement (`{}`) can be included in the array.
    var security: [SecurityRequirementObject]? { get }

    /// A list of tags used by the document with additional metadata.
    /// The order of the tags can be used to reflect on their order by the parsing tools.
    /// Not all tags that are used by the [Operation Object](https://spec.openapis.org/oas/v3.1.0#operation-object) must be declared.
    /// The tags that are not declared _MAY_ be organized randomly or based on the tools’ logic.
    /// Each tag name in the list _MUST_ be unique.
    var tags: [TagObject]? { get }

    /// Additional external documentation.
    var externalDocs: ExternalDocumentationObject? { get }
}