
/// A map of possible out-of band callbacks related to the parent operation.
/// Each value in the map is a [Path Item Object](https://spec.openapis.org/oas/v3.1.0#path-item-object) that describes a set of requests that may be initiated by the API provider and the expected responses.
/// The key value used to identify the path item object is an expression, evaluated at runtime, that identifies a URL to use for the callback operation.
/// 
/// To describe incoming requests from the API provider independent from another API call, use the `[webhooks](https://spec.openapis.org/oas/v3.1.0#oasWebhooks)` field.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#callback-object
public protocol CallbackObjectProtocol: Sendable, ~Copyable {
}