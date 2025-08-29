
/// Allows configuration of the supported OAuth Flows.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#oauth-flows-object
public protocol OAuthFlowsObjectProtocol: Sendable, ~Copyable {
    associatedtype Implicit:OAuthFlowObjectProtocol
    associatedtype Password:OAuthFlowObjectProtocol
    associatedtype ClientCredentials:OAuthFlowObjectProtocol
    associatedtype AuthorizationCode:OAuthFlowObjectProtocol

    /// Configuration for the OAuth Implicit flow.
    var implicit: Implicit? { get }

    /// Configuration for the OAuth Resource Owner Password flow.
    var password: Password? { get }

    /// Configuration for the OAuth Client Credentials flow.
    /// Previously called `application` in OpenAPI 2.0.
    var clientCredentials: ClientCredentials? { get }

    /// Configuration for the OAuth Authorization Code flow.
    /// Previously called `accessCode` in OpenAPI 2.0.
    var authorizationCode: AuthorizationCode? { get }
}