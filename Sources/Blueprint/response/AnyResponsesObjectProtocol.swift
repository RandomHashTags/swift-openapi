
/// A container for the expected responses of an operation.
/// The container maps a HTTP response code to the expected response.
/// 
/// The documentation is not necessarily expected to cover all possible HTTP response codes because they may not be known in advance.
/// However, documentation is expected to cover a successful operation response and any known errors.
/// 
/// The `default` _MAY_ be used as a default response object for all HTTP codes that are not covered individually by the `Responses Object`.
/// 
/// The `Responses Object` _MUST_ contain at least one response code, and if only one response code is provided it _SHOULD_ be the response for a successful operation call.
/// 
/// https://spec.openapis.org/oas/v3.1.0#responses-object
public protocol AnyResponsesObjectProtocol: Sendable, ~Copyable {
}