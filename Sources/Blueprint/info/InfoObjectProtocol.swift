/// The object provides metadata about the API.
/// The metadata _MAY_ be used by the clients if needed, and _MAY_ be presented in editing or documentation generation tools for convenience.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#info-object
public protocol InfoObjectProtocol: AnyInfoObjectProtocol, ~Copyable {
    associatedtype ContactObject:ContactObjectProtocol
    associatedtype LicenseObject:LicenseObjectProtocol

    /// The contact information for the exposed API.
    var contact: ContactObject? { get }

    /// The license information for the exposed API.
    var license: LicenseObject? { get }
}