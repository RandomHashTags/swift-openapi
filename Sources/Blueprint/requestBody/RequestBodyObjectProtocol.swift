
/// Describes a single request body.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#request-body-object
public protocol RequestBodyObjectProtocol: AnyRequestBodyObjectProtocol, ~Copyable {
    associatedtype MediaTypeObject:MediaTypeObjectProtocol

    /// The content of the request body.
    /// The key is a media type or media type range, see [[RFC7231](https://spec.openapis.org/oas/v3.1.0#bib-rfc7231)] [Appendix D](https://datatracker.ietf.org/doc/html/rfc7231#appendix-D), and the value describes it.
    /// For requests that match multiple keys, only the most specific key is applicable. e.g. text/plain overrides text/*
    var content: [String:MediaTypeObject] { get }
}