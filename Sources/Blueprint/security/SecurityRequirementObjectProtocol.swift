
/// Lists the required security schemes to execute this operation.
/// The name used for each property _MUST_ correspond to a security scheme declared in the [Security Schemes](https://spec.openapis.org/oas/v3.1.0#componentsSecuritySchemes) under the [Components Object](https://spec.openapis.org/oas/v3.1.0#components-object).
/// 
/// Security Requirement Objects that contain multiple schemes require that all schemes _MUST_ be satisfied for a request to be authorized.
/// This enables support for scenarios where multiple query parameters or HTTP headers are required to convey security information.
/// 
/// When a list of Security Requirement Objects is defined on the [OpenAPI Object](https://spec.openapis.org/oas/v3.1.0#openapi-object) or [Operation Object](https://spec.openapis.org/oas/v3.1.0#operation-object), only one of the Security Requirement Objects in the list needs to be satisfied to authorize the request.
/// 
/// https://spec.openapis.org/oas/v3.1.0#security-requirement-object
public protocol SecurityRequirementObjectProtocol: Sendable, ~Copyable {
}