
/// Describes a single operation parameter.
///
/// A unique parameter is defined by a combination of a [name](https://spec.openapis.org/oas/v3.1.0#parameterName) and [location](https://spec.openapis.org/oas/v3.1.0#parameterIn).
/// 
/// ## Parameter Locations
/// There are four possible parameter locations specified by the `in` field:
/// - path - Used together with [Path Templating](https://spec.openapis.org/oas/v3.1.0#path-templating), where the parameter value is actually part of the operation’s URL.
/// This does not include the host or base path of the API. For example, in `/items/{itemId}`, the path parameter is `itemId`.
/// - query - Parameters that are appended to the URL.
/// For example, in `/items?id=###`, the query parameter is `id`.
/// - header - Custom headers that are expected as part of the request.
/// Note that [[RFC7230](https://spec.openapis.org/oas/v3.1.0#bib-rfc7230)] [Page 22](https://datatracker.ietf.org/doc/html/rfc7230#page-22) states header names are case insensitive.
/// - cookie - Used to pass a specific cookie value to the API.
/// 
/// https://spec.openapis.org/oas/v3.1.0#parameter-object
public protocol ParameterObjectProtocol: AnyParameterObject, ~Copyable {
    associatedtype Schema:SchemaObjectProtocol
    associatedtype ExampleObject:ExampleObjectProtocol

    /// The schema defining the type used for the parameter.
    var schema: Schema? { get }

    /// Example of the parameter’s potential value.
    /// The example _SHOULD_ match the specified schema and encoding properties if present.
    /// The `example` field is mutually exclusive of the `examples` field.
    /// Furthermore, if referencing a `schema` that contains an example, the `example` value _SHALL override_ the example provided by the schema.
    /// To represent examples of media types that cannot naturally be represented in JSON or YAML, a string value can contain the example with escaping where necessary.
    var example: Any? { get } // TODO: fix?

    /// Examples of the parameter’s potential value.
    /// Each example _SHOULD_ contain a value in the correct format as specified in the parameter encoding.
    /// The `examples` field is mutually exclusive of the `example` field.
    /// Furthermore, if referencing a `schema` that contains an example, the `examples` value _SHALL_ override the example provided by the schema.
    var examples: [String:ExampleObject] { get }
}