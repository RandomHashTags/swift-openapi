
/// Describes a single response from an API Operation, including design-time, static `links` to operations based on the response.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#response-object
public protocol ResponseObjectProtocol: AnyResponseObjectProtocol, ~Copyable {
    associatedtype HeaderObject:HeaderObjectProtocol
    associatedtype MediaTypeObject:MediaTypeObjectProtocol
    associatedtype LinkObject:LinkObjectProtocol

    /// Maps a header name to its definition.
    /// [[RFC7230](https://spec.openapis.org/oas/v3.1.0#bib-rfc7230)] [Page 22](https://datatracker.ietf.org/doc/html/rfc7230#page-22) states header names are case insensitive.
    /// If a response header is defined with the name `"Content-Type"`, it _SHALL_ be ignored.
    var headers: [String:HeaderObject]? { get }

    /// A map containing descriptions of potential response payloads.
    /// The key is a media type or media type range, see [[RFC7231](https://spec.openapis.org/oas/v3.1.0#bib-rfc7231)] [Appendix D](https://datatracker.ietf.org/doc/html/rfc7231#appendix-D), and the value describes it.
    /// For responses that match multiple keys, only the most specific key is applicable. e.g. text/plain overrides text/*
    var content: [String:MediaTypeObject]? { get }

    /// A map of operations links that can be followed from the response.
    /// The key of the map is a short name for the link, following the naming constraints of the names for [Component Objects](https://spec.openapis.org/oas/v3.1.0#components-object).
    var links: [String:LinkObject]? { get }
}