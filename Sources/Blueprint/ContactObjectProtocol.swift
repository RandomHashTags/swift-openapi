
/// Contact information for the exposed API.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#contact-object
public protocol ContactObjectProtocol: Sendable, ~Copyable {
    /// The identifying name of the contact person/organization.
    var name: String? { get }

    /// The URL pointing to the contact information.
    /// This _MUST_ be in the form of a URL.
    var url: String? { get }

    /// The email address of the contact person/organization.
    /// This _MUST_ be in the form of an email address.
    var email: String? { get }
}