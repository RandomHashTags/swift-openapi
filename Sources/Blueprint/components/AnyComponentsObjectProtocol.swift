
/// Holds a set of reusable objects for different aspects of the OAS.
/// All objects defined within the components object will have no effect on the API unless they are explicitly referenced from properties outside the components object.
/// 
/// This object _MAY_ be extended with Specification Extensions.
/// 
/// All the fields declared are objects that _MUST_ use keys that match the regular expression: `^[a-zA-Z0-9\.\-_]+$`.
/// 
/// https://spec.openapis.org/oas/v3.1.0#components-object
public protocol AnyComponentsObjectProtocol: Sendable, ~Copyable {
}