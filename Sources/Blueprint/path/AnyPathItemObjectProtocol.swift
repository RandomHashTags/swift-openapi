
/// Describes the operations available on a single path.
/// A Path Item _MAY_ be empty, due to [ACL constraints](https://spec.openapis.org/oas/v3.1.0#security-filtering).
/// The path itself is still exposed to the documentation viewer but they will not know which operations and parameters are available.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#path-item-object
public protocol AnyPathItemObjectProtocol: Sendable, ~Copyable {

    /// Allows for a referenced definition of this path item.
    /// The referenced structure _MUST_ be in the form of a [Path Item Object](https://spec.openapis.org/oas/v3.1.0#path-item-object).
    /// In case a Path Item Object field appears both in the defined object and the referenced object, the behavior is undefined.
    /// See the rules for resolving [Relative References](https://spec.openapis.org/oas/v3.1.0#relative-references-in-uris).
    var ref: String? { get }

    /// An optional, string summary, intended to apply to all operations in this path.
    var summary: String? { get }

    /// An optional, string description, intended to apply to all operations in this path.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }
}