
/// An object representing a Server.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#server-object
public protocol ServerObjectProtocol: AnyServerObjectProtocol, ~Copyable {
    associatedtype ServerVariableObject:ServerVariableObjectProtocol

    /// A map between a variable name and its value.
    /// The value is used for substitution in the server’s URL template.
    var variables: [String:ServerVariableObject]? { get }
}