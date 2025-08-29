
/// Defines a security scheme that can be used by the operations.
/// 
/// Supported schemes are HTTP authentication, an API key (either as a header, a cookie parameter or as a query parameter), mutual TLS (use of a client certificate), OAuth2’s common flows (implicit, password, client credentials and authorization code) as defined in [[RFC6749](https://spec.openapis.org/oas/v3.1.0#bib-rfc6749)], and [OpenID Connect Discovery](https://tools.ietf.org/html/draft-ietf-oauth-discovery-06).
/// Please note that as of 2020, the implicit flow is about to be deprecated by [OAuth 2.0 Security Best Current Practice](https://tools.ietf.org/html/draft-ietf-oauth-security-topics).
/// Recommended for most use case is Authorization Code Grant flow with PKCE.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#security-scheme-object
public protocol SecuritySchemeObjectProtocol: AnySecuritySchemeObjectProtocol, ~Copyable {
    associatedtype OAuthFlowsObject:OAuthFlowsObjectProtocol

    /// An object containing configuration information for the flow types supported.
    var flows: OAuthFlowsObject { get }
}