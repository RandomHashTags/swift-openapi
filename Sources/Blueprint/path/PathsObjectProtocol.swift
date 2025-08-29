
/// Holds the relative paths to the individual endpoints and their operations.
/// The path is appended to the URL from the `[Server Object](https://spec.openapis.org/oas/v3.1.0#server-object)` in order to construct the full URL.
/// The Paths _MAY_ be empty, due to [Access Control List (ACL) constraints](https://spec.openapis.org/oas/v3.1.0#security-filtering).
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#paths-object
public protocol PathsObjectProtocol: Sendable, ~Copyable {
}