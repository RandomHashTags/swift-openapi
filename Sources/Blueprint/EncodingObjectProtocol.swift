
/// A single encoding definition applied to a single schema property.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#encoding-object
public protocol EncodingObjectProtocol: Sendable, ~Copyable {
    associatedtype HeaderObject:HeaderObjectProtocol

    /// The Content-Type for encoding a specific property.
    /// Default value depends on the property type: for `object` - `application/json`; for `array` – the default is defined based on the inner type; for all other cases the default is `application/octet-stream`.
    /// The value can be a specific media type (e.g. `application/json`), a wildcard media type (e.g. `image/*`), or a comma-separated list of the two types.
    var contentType: String? { get }

    /// A map allowing additional information to be provided as headers, for example `Content-Disposition`.
    /// `Content-Type` is described separately and _SHALL_ be ignored in this section.
    /// This property _SHALL_ be ignored if the request body media type is not a `multipart`.
    var headers: [String:HeaderObject]? { get }

    /// Describes how a specific property value will be serialized depending on its type.
    /// See [Parameter Object](https://spec.openapis.org/oas/v3.1.0#parameter-object) for details on the `[style](https://spec.openapis.org/oas/v3.1.0#parameterStyle)` property.
    /// The behavior follows the same values as `query` parameters, including default values.
    /// This property _SHALL_ be ignored if the request body media type is not `application/x-www-form-urlencoded` or `multipart/form-data`.
    /// If a value is explicitly defined, then the value of `[contentType](https://spec.openapis.org/oas/v3.1.0#encodingContentType)` (implicit or explicit) _SHALL_ be ignored.
    var style: String? { get }

    /// When this is true, property values of type `array` or `object` generate separate parameters for each value of the array, or key-value-pair of the map.
    /// For other types of properties this property has no effect.
    /// When `[style](https://spec.openapis.org/oas/v3.1.0#encodingStyle)` is `form`, the default value is `true`.
    /// For all other styles, the default value is `false`.
    /// This property _SHALL_ be ignored if the request body media type is not `application/x-www-form-urlencoded` or `multipart/form-data`.
    /// If a value is explicitly defined, then the value of `[contentType](https://spec.openapis.org/oas/v3.1.0#encodingContentType)` (implicit or explicit) _SHALL_ be ignored.
    var explode: Bool { get }

    /// Determines whether the parameter value _SHOULD_ allow reserved characters, as defined by [[RFC3986](https://spec.openapis.org/oas/v3.1.0#bib-rfc3986)] [Section 2.2](https://datatracker.ietf.org/doc/html/rfc3986#section-2.2) `:/?#[]@!$&'()*+,;=` to be included without percent-encoding.
    /// The default value is `false`.
    /// This property _SHALL_ be ignored if the request body media type is not `application/x-www-form-urlencoded` or `multipart/form-data`.
    /// If a value is explicitly defined, then the value of `[contentType](https://spec.openapis.org/oas/v3.1.0#encodingContentType)` (implicit or explicit) _SHALL_ be ignored.
    var allowReserved: Bool { get }
}

extension EncodingObjectProtocol {
    @inlinable
    public var explode: Bool {
        style == "form"
    }

    @inlinable
    public var allowReserved: Bool {
        false
    }
}