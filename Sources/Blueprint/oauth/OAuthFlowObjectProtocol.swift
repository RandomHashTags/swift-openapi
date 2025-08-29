
/// Configuration details for a supported OAuth Flow.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#oauth-flow-object
public protocol OAuthFlowObjectProtocol: Sendable, ~Copyable {
    /// The authorization URL to be used for this flow.
    /// This _MUST_ be in the form of a URL.
    /// The OAuth2 standard requires the use of TLS.
    var authorizationUrl: String { get }

    /// The token URL to be used for this flow.
    /// This _MUST_ be in the form of a URL.
    /// The OAuth2 standard requires the use of TLS.
    var tokenUrl: String { get }

    /// The URL to be used for obtaining refresh tokens.
    /// This _MUST_ be in the form of a URL.
    /// The OAuth2 standard requires the use of TLS.
    var refreshUrl: String? { get }

    /// The available scopes for the OAuth2 security scheme.
    /// A map between the scope name and a short description for it.
    /// The map _MAY_ be empty.
    var scopes: [String:String] { get }
}