
/// Describes a single API operation on a path.
/// 
/// This object MAY be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#operation-object
public protocol OperationObjectProtocol: AnyOperationObjectProtocol, ~Copyable {
    associatedtype ExternalDocumentationObject:ExternalDocumentationObjectProtocol
    associatedtype ParameterObject
    associatedtype RequestBodyObject:RequestBodyObjectProtocol
    associatedtype ResponsesBody
    associatedtype SecurityRequirementObject
    associatedtype ServerObject:ServerObjectProtocol

    /// Additional external documentation for this operation.
    var externalDocs: ExternalDocumentationObject? { get }

    /// A list of parameters that are applicable for this operation.
    /// If a parameter is already defined at the [Path Item](https://spec.openapis.org/oas/v3.1.0#pathItemParameters), the new definition will override it but can never remove it.
    /// The list _MUST NOT_ include duplicated parameters.
    /// A unique parameter is defined by a combination of a [name](https://spec.openapis.org/oas/v3.1.0#parameterName) and [location](https://spec.openapis.org/oas/v3.1.0#parameterIn).
    /// The list can use the [Reference Object](https://spec.openapis.org/oas/v3.1.0#reference-object) to link to parameters that are defined at the [OpenAPI Object’s components/parameters](https://spec.openapis.org/oas/v3.1.0#componentsParameters).
    var parameters: [ParameterObject]? { get }

    /// The request body applicable for this operation.
    /// The `requestBody` is fully supported in HTTP methods where the HTTP 1.1 specification [[RFC7231](https://spec.openapis.org/oas/v3.1.0#bib-rfc7231)] [Section 4.3.1](https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1) has explicitly defined semantics for request bodies.
    /// In other cases where the HTTP spec is vague (such as [GET](https://tools.ietf.org/html/rfc7231#section-4.3.1), [HEAD](https://tools.ietf.org/html/rfc7231#section-4.3.2) and [DELETE](https://tools.ietf.org/html/rfc7231#section-4.3.5)), `requestBody` is permitted but does not have well-defined semantics and _SHOULD_ be avoided if possible.
    var requestBody: RequestBodyObject? { get }

    /// The list of possible responses as they are returned from executing this operation.
    var responses: ResponsesBody? { get }

    /// A map of possible out-of band callbacks related to the parent operation.
    /// The key is a unique identifier for the Callback Object.
    /// Each value in the map is a [Callback Object](https://spec.openapis.org/oas/v3.1.0#callback-object) that describes a request that may be initiated by the API provider and the expected responses.
    var callbacks: [String:String] { get } // TODO: fix

    /// A declaration of which security mechanisms can be used for this operation.
    /// The list of values includes alternative security requirement objects that can be used.
    /// Only one of the security requirement objects need to be satisfied to authorize a request.
    /// To make security optional, an empty security requirement (`{}`) can be included in the array.
    /// This definition overrides any declared top-level `[security](https://spec.openapis.org/oas/v3.1.0#oasSecurity)`.
    /// To remove a top-level security declaration, an empty array can be used.
    var security: SecurityRequirementObject? { get }

    /// An alternative `server` array to service this operation.
    /// If an alternative `server` object is specified at the Path Item Object or Root level, it will be overridden by this value.
    var servers: [ServerObject]? { get }
}