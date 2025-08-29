
/// An object representing a Server Variable for server URL template substitution.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#server-variable-object
public protocol ServerVariableObjectProtocol: Sendable, ~Copyable {
    /// An enumeration of string values to be used if the substitution options are from a limited set.
    /// The array _MUST NOT_ be empty.
    var `enum`: [String]? { get }

    /// The default value to use for substitution, which _SHALL_ be sent if an alternate value is not supplied.
    /// Note this behavior is different than the [Schema Object’s](https://spec.openapis.org/oas/v3.1.0#schema-object) treatment of default values, because in those cases parameter values are optional.
    /// If the `[enum](https://spec.openapis.org/oas/v3.1.0#serverVariableEnum)` is defined, the value _MUST_ exist in the enum’s values.
    var `default`: String { get }

    /// An optional description for the server variable.
    /// [[CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark)] syntax _MAY_ be used for rich text representation.
    var description: String? { get }
}