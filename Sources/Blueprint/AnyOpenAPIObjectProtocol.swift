
/// This is the root object of the OpenAPI document.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#openapi-object
public protocol AnyOpenAPIObjectProtocol: Sendable, ~Copyable {
    /// This string _MUST_ be the [version number](https://spec.openapis.org/oas/v3.1.0#versions) of the OpenAPI Specification that the OpenAPI document uses.
    /// The `openapi` field _SHOULD_ be used by tooling to interpret the OpenAPI document.
    /// This is _not_ related to the API `[info.version](https://spec.openapis.org/oas/v3.1.0#infoVersion)` string.
    var openapi: String { get }

    /// The default value for the `$schema` keyword within [Schema Objects](https://spec.openapis.org/oas/v3.1.0#schema-object) contained within this OAS document.
    /// This _MUST_ be in the form of a URI.
    var jsonSchemaDialect: String? { get }
}