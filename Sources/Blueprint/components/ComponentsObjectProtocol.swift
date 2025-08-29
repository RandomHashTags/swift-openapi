
/// Holds a set of reusable objects for different aspects of the OAS.
/// All objects defined within the components object will have no effect on the API unless they are explicitly referenced from properties outside the components object.
/// 
/// This object _MAY_ be extended with Specification Extensions.
/// 
/// All the fields declared are objects that _MUST_ use keys that match the regular expression: `^[a-zA-Z0-9\.\-_]+$`.
/// 
/// https://spec.openapis.org/oas/v3.1.0#components-object
public protocol ComponentsObjectProtocol: AnyComponentsObjectProtocol, ~Copyable {
    associatedtype SchemaObject:SchemaObjectProtocol
    associatedtype ResponseObject:ResponseObjectProtocol
    associatedtype ParameterObject:ParameterObjectProtocol
    associatedtype ExampleObject:ExampleObjectProtocol
    associatedtype RequestBodyObject:RequestBodyObjectProtocol
    associatedtype HeaderObject:HeaderObjectProtocol
    associatedtype SecuritySchemeObject:SecuritySchemeObjectProtocol
    associatedtype LinkObject:LinkObjectProtocol
    associatedtype CallbackObject:CallbackObjectProtocol
    associatedtype PathItemObject:PathItemObjectProtocol

    /// An object to hold reusable [Schema Objects](https://spec.openapis.org/oas/v3.1.0#schema-object).
    var schemas: [String:SchemaObject]? { get }

    /// An object to hold reusable [Response Objects](https://spec.openapis.org/oas/v3.1.0#response-object).
    var responses: [String:ResponseObject]? { get }

    /// An object to hold reusable [Parameter Objects](https://spec.openapis.org/oas/v3.1.0#parameter-object).
    var parameters: [String:ParameterObject]? { get }

    /// An object to hold reusable [Example Objects](https://spec.openapis.org/oas/v3.1.0#example-object).
    var examples: [String:ExampleObject]? { get }

    /// An object to hold reusable [Request Body Objects](https://spec.openapis.org/oas/v3.1.0#request-body-object).
    var requestBodies: [String:RequestBodyObject]? { get }

    /// An object to hold reusable [Header Objects](https://spec.openapis.org/oas/v3.1.0#header-object).
    var headers: [String:HeaderObject]? { get }

    /// An object to hold reusable [Security Scheme Objects](https://spec.openapis.org/oas/v3.1.0#security-scheme-object).
    var securitySchemes: [String:SecuritySchemeObject]? { get }

    /// An object to hold reusable [Link Objects](https://spec.openapis.org/oas/v3.1.0#link-object).
    var links: [String:LinkObject]? { get }

    /// An object to hold reusable [Callback Objects](https://spec.openapis.org/oas/v3.1.0#callback-object).
    var callbacks: [String:CallbackObject]? { get }

    /// An object to hold reusable [Path Item Object](https://spec.openapis.org/oas/v3.1.0#path-item-object).
    var pathItems: [String:PathItemObject]? { get }
}