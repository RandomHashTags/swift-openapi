
/// License information for the exposed AP
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#license-object
public protocol LicenseObjectProtocol: Sendable, ~Copyable {
    /// The license name used for the API.
    var name: String { get }

    /// An [[SPDX-Licenses](https://spec.openapis.org/oas/v3.1.0#bib-spdx-licenses)] expression for the API.
    /// The `identifier` field is mutually exclusive of the `url` field.
    var identifier: String? { get }

    /// A URL to the license used for the API.
    /// This _MUST_ be in the form of a URL.
    /// The `url` field is mutually exclusive of the `identifier` field.
    var url: String? { get }
}