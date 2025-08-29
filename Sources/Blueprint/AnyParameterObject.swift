
/// Describes a single operation parameter.
///
/// A unique parameter is defined by a combination of a [name](https://spec.openapis.org/oas/v3.1.0#parameterName) and [location](https://spec.openapis.org/oas/v3.1.0#parameterIn).
/// 
/// https://spec.openapis.org/oas/v3.1.0#parameter-object
public protocol AnyParameterObject: Sendable, ~Copyable {
    /// The name of the parameter. Parameter names are _case sensitive_. 
    /// 
    /// - If `in` is "path", the `name` field _MUST_ correspond to a template expression occurring within the [path]() field in the [Paths Object](). See [Path Templating]() for further information.
    /// - If `in` is "header" and the `name` field is "Accept", "Content-Type" or "Authorization", the parameter definition _SHALL_ be ignored.
    /// - For all other cases, the `name` corresponds to the parameter name used by the `in` property.
    var name: String { get }

    /// The location of the parameter. Possible values are "query", "header", "path" or "cookie".
    var `in`: String { get }

    /// A brief description of the parameter. This could contain examples of use. [CommonMark](https://spec.openapis.org/oas/v3.1.0#bib-commonmark) syntax _MAY_ be used for rich text representation.
    var description: String? { get }

    /// Determines whether this parameter is mandatory.
    /// If the [parameter location](https://spec.openapis.org/oas/v3.1.0#parameterIn) is "path", this property is **_REQUIRED_** and its value _MUST_ be `true`.
    /// Otherwise, the property _MAY_ be included and its default value is `false`.
    var required: Bool { get }

    /// Specifies that a parameter is deprecated and _SHOULD_ be transitioned out of usage. Default value is `false`.
    var deprecated: Bool { get }

    /// Sets the ability to pass empty-valued parameters.
    /// This is valid only for `query` parameters and allows sending a parameter with an empty value.
    /// Default value is `false`.
    /// If [`style`](https://spec.openapis.org/oas/v3.1.0#parameterStyle) is used, and if behavior is `n/a` (cannot be serialized), the value of `allowEmptyValue` _SHALL_ be ignored.
    /// Use of this property is _NOT RECOMMENDED_, as it is likely to be removed in a later revision.
    var allowEmptyValue: Bool { get }

    /// Describes how the parameter value will be serialized depending on the type of the parameter value.
    /// Default values (based on value of `in`): for `query` - `form`; for `path` - `simple`; for `header` - `simple`; for `cookie` - `form`.
    var style: String? { get }

    /// When this is true, parameter values of type `array` or `object` generate separate parameters for each value of the array or key-value pair of the map.
    /// For other types of parameters this property has no effect.
    /// When [`style`](https://spec.openapis.org/oas/v3.1.0#parameterStyle) is `form`, the default value is `true`.
    /// For all other styles, the default value is `false`.
    var explode: Bool { get }

    /// Determines whether the parameter value _SHOULD_ allow reserved characters, as defined by [[RFC3986](https://spec.openapis.org/oas/v3.1.0#bib-rfc3986)] [Section 2.2](https://datatracker.ietf.org/doc/html/rfc3986#section-2.2) `:/?#[]@!$&'()*+,;=` to be included without percent-encoding.
    /// This property only applies to parameters with an `in` value of `query`.
    /// The default value is false.
    var allowReserved: Bool { get }
}

extension AnyParameterObject {
    @inlinable
    public var required: Bool {
        false
    }

    @inlinable
    public var deprecated: Bool {
        false
    }

    @inlinable
    public var allowEmptyValue: Bool {
        false
    }

    @inlinable
    public var style: String? {
        switch `in` {
        case "query": "form"
        case "path": "simple"
        case "header": "simple"
        case "cookie": "form"
        default: nil
        }
    }

    @inlinable
    public var explode: Bool {
        style == "form"
    }

    @inlinable
    public var allowReserved: Bool {
        `in` == "query"
    }
}